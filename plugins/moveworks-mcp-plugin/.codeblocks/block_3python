import { Client } from "@modelcontextprotocol/sdk/client/index.js";
import { StdioClientTransport } from "@modelcontextprotocol/sdk/client/stdio.js";
import {
  McpConfigSchema,
  CallToolRequestSchema,
  ToolResponseSchema,
} from "./schema";
import { Hono } from "hono";

interface McpServer {
  client: Client;
  tools: Array<{
    name: string;
    description: string;
    input_schema: any;
  }>;
}

async function connectToMcpServer(
  serverId: string,
  config: { command: string; args: string[]; env?: Record<string, string> }
): Promise<McpServer> {
  const transport = new StdioClientTransport({
    command: config.command,
    args: config.args,
    env: config.env,
  });

  const client = new Client({
    name: `${serverId}-client`,
    version: "1.0.0",
  });

  await client.connect(transport);

  // Fetch tools and prefix their names
  const toolList = await client.listTools();
  const tools = toolList.tools.map((tool) => ({
    name: tool.name,
    description: tool.description || "",
    input_schema: tool.inputSchema,
  }));

  return { client, tools };
}

const app = new Hono();

async function startProxyServer() {
  const file = Bun.file("./mcp.json");
  const config = McpConfigSchema.parse(await file.json());

  const servers: Record<string, McpServer> = {};
  for (const [serverId, serverConfig] of Object.entries(config.mcpServers)) {
    try {
      console.log(`Connecting to ${serverId}...`);
      servers[serverId] = await connectToMcpServer(serverId, serverConfig);
      console.log(`Connected to ${serverId}`);
    } catch (error) {
      console.error(`Failed to connect to ${serverId}:`, error);
    }
  }

  // GET /:serverId/tools: List tools for a specific MCP server
  app.get("/:serverId/tools", async (c) => {
    try {
      const serverId = c.req.param("serverId");
      const server = servers[serverId];
      if (!server) {
        return c.json({ error: `Server ${serverId} not found` }, 404);
      }
      return c.json(server.tools, 200);
    } catch (error) {
      return c.json({ error: (error as Error).message }, 500);
    }
  });

  // POST /:serverId/call-tool: Call a tool for a specific MCP server
  app.post("/:serverId/call-tool", async (c) => {
    try {
      const serverId = c.req.param("serverId");
      const server = servers[serverId];
      if (!server) {
        return c.json({ error: `Server ${serverId} not found` }, 404);
      }

      const body = await c.req.json();
      const parsed = CallToolRequestSchema.parse(body);
      const toolName = parsed.tool;

      // Validate tool exists for this server
      const tool = server.tools.find((t) => t.name === toolName);
      if (!tool) {
        return c.json(
          { error: `Tool ${toolName} not found on server ${serverId}` },
          400
        );
      }

      const result = await server.client.callTool({
        name: toolName,
        arguments: parsed.parameters,
      });
      const parsedResult = ToolResponseSchema.parse(result);

      return c.json(parsedResult, 200);
    } catch (error) {
      return c.json({ error: (error as Error).message, mcp_error: true }, 500);
    }
  });

  // 404 for unknown routes
  app.notFound((c) => {
    return c.json({ error: "Not found" }, 404);
  });

  console.log("Proxy server running at http://localhost:3000");
}

startProxyServer();

export default {
  port: 3000,
  fetch: app.fetch,
};
