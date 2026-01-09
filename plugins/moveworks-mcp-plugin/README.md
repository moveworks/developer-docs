---
availability: INSTALLABLE
description: Connect Agent Studio to MCP Servers.
installation_asset_uuid: 4fb82a15-e488-45a2-9515-d048c1b0b29e
name: MCP Plugin
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+the+5+products+purchased%3F+Give+me+the+price+as+well%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Connecting+to+MCP+Server%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Looking+up+product+data%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Summarizing+Results%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+top+five+products%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESophisticated+Serenity+Blazer%3C%2Fstrong%3E+-+%2479.99%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEcoLuxe+Organic+Cotton+Tee%3C%2Fstrong%3E+-+%2429.50%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EUrban+Aura+Denim+Jacket%3C%2Fstrong%3E+-+%2495.00%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EVelvet+Dusk+Evening+Dress%3C%2Fstrong%3E+-+%24120.00%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERustic+Wanderer+Wool+Sweater%3C%2Fstrong%3E+-+%2468.75%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%5D%7D
systems:
- moveworks
---

# Introduction

This tutorial demonstrates how to connect Agent Studio to the Model Context Protocol (MCP) using a custom proxy server client. We will build a proxy to bridge HTTP requests from Agent Studio to an MCP server. This proof-of-concept (POC) showcases how to integrate Plugins with MCP, enabling AI agents to interact with external tools and services in a standardized way. By the end, you’ll have a working setup where Agent Studio communicates with an MCP server through the proxy.

![CleanShot 2025-08-05 at 10.05.57@2x.png](MCP%20Plugin%20246588d8909f8088985ef68dbca3ad75/7ddcf60a-8cde-4641-ba38-4d135d7095d4.png)

# Prerequisites

To follow this tutorial, you’ll need:

- **Agent Studio**
- **Bun / nodejs**: Required to build and run the MCP client proxy.
- **MCP Server**: Access to an MCP server (e.g., a local or remote server like @modelcontextprotocol/server-filesystem).
- **Basic Knowledge**: Familiarity with JavaScript, HTTP APIs, and RESTful services.
- **MCP Client Proxy**: We’ll build this lightweight proxy server in this tutorial to route Agent Studio’s HTTP requests to the MCP server.

# What Are We Building?

We’re creating a system where Agent Studio sends HTTP requests to a custom MCP client proxy, which translates and forwards them to an MCP server. The flow is:

**Agent Studio (HTTP Request) → MCP Client Proxy → MCP Server**

The proxy handles MCP’s transport protocols (e.g., Streamable HTTP or Server-Sent Events) and exposes a simple REST API for Agent Studio. This POC demonstrates how to:

- Build a typescript-based MCP client proxy.
- Configure Agent Studio to send HTTP requests to the proxy.
- Enable the proxy to communicate with multiple MCP servers.
- Handle MCP tools and tool calls via two APIs: tools (list available tools) and call-tool (execute a tool).

Caveats:

- The proxy is required in order to connect to MCP servers through Agent Studio
- The proxy is a simplified implementation for this POC and may need additional security and error handling for production use.

# Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+the+5+products+purchased%3F+Give+me+the+price+as+well%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Connecting+to+MCP+Server%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Looking+up+product+data%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Summarizing+Results%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+top+five+products%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESophisticated+Serenity+Blazer%3C%2Fstrong%3E+-+%2479.99%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEcoLuxe+Organic+Cotton+Tee%3C%2Fstrong%3E+-+%2429.50%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EUrban+Aura+Denim+Jacket%3C%2Fstrong%3E+-+%2495.00%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EVelvet+Dusk+Evening+Dress%3C%2Fstrong%3E+-+%24120.00%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERustic+Wanderer+Wool+Sweater%3C%2Fstrong%3E+-+%2468.75%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

## **Setting Up the MCP Client Proxy**

<aside>
💡

Download the SOLUTION. The [Moveworks-MCP-Proxy-Client](https://github.com/moveworks/Moveworks-MCP-Proxy-Client) repository contains a README file with instructions on how to install dependencies and run the client proxy

</aside>

This section guides you through setting up the MCP client proxy. The proxy is built with TypeScript, Hono, and the MCP SDK, and it connects to MCP servers via Stdio transport.

1. **Create the Project Directory**: Create a new directory for the proxy and navigate into it:
    
    ```bash
    mkdir mcp-client-proxy
    cd mcp-client-proxy
    ```
    
    *Note*: This directory will contain all project files, including source code and configuration.
    
2. **Initialize a Bun Project**: Initialize a new Bun project with a package.json:
    
    ```bash
    bun init -y
    ```
    
    *Note*: The -y flag auto-generates a basic package.json. You can edit it later to add metadata like name or version.
    
3. **Install Dependencies**: Install the required packages for the proxy:
    
    ```bash
    bun add hono @modelcontextprotocol/sdk zod
    ```
    
    - hono: Lightweight web framework for the REST API.
    - @modelcontextprotocol/sdk: MCP client SDK for connecting to MCP servers.
    - zod: Schema validation for request and response payloads.
4. **Create the Proxy Source Files**: Create the following files in the project root:
    - index.ts:
        
        ```tsx
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
        ```
        
        *Note*: This file implements the proxy server, connecting to MCP servers via Stdio transport and exposing the /tools and /call-tool endpoints.
        
    - schema.ts
        
        ```tsx
        import { z } from "zod";
        
        export const McpConfigSchema = z.object({
          mcpServers: z.record(
            z.object({
              command: z.string(),
              args: z.array(z.string()),
              env: z.record(z.string()).optional(),
            })
          ),
        });
        
        // Schema for tool call responses
        export const ToolResponseSchema = z.object({
          content: z.array(
            z.object({
              type: z.literal("text"),
              text: z.string(),
            })
          ),
        });
        
        // Schema for /call-tool request body
        export const CallToolRequestSchema = z.object({
          tool: z.string(),
          parameters: z.record(z.any()), // Flexible parameters
        });
        ```
        
        *Note*: This file defines Zod schemas for validating the MCP server configuration, tool call requests, and responses.
        
5. **Create the MCP Configuration File**: Create a file named mcp.json in the project root with the following example configuration:
    
    ```json
    {
      "mcpServers": {
        "context7": {
          "command": "bunx",
          "args": ["-y", "@upstash/context7-mcp"]
        },
        "time": {
          "command": "uvx",
          "args": ["mcp-server-time", "--local-timezone=America/New_York"]
        },
        "postgres": {
          "command": "/usr/local/bin/docker",
          "args": [
            "run",
            "-i",
            "--rm",
            "-e",
            "DATABASE_URI",
            "crystaldba/postgres-mcp",
            "--access-mode=unrestricted"
          ],
          "env": {
            "DATABASE_URI": "postgresql://myuser:12345@localhost:5432/store_db"
          }
        }
      }
    }
    
    ```
    
6. **Run the Proxy Server**: Start the proxy server using Bun:
    
    ```bash
    bun run index.ts
    ```
    
    *Note*: This command runs the proxy, which connects to the MCP servers defined in mcp.json and starts listening on http://localhost:3000. You should see logs like Connecting to server1... and Proxy server running at http://localhost:3000.
    
7. **Test the Proxy**: Verify the proxy is working using curl or a tool like Postman:
    1. **List Tools**:
        
        ```bash
        curl http://localhost:3000/time/tools
        ```
        
        Expected response (depends on the MCP server’s tools):
        
        ```json
        [
          {
            "name": "get_current_time",
            "description": "Get current time in a specific timezones",
            "input_schema": {
              "type": "object",
              "properties": {
                "timezone": {
                  "type": "string",
                  "description": "IANA timezone name (e.g., 'America/New_York', 'Europe/London'). Use 'America/New_York' as local timezone if no timezone provided by the user."
                }
              },
              "required": ["timezone"]
            }
          },
          {
            "name": "convert_time",
            "description": "Convert time between timezones",
            "input_schema": {
              "type": "object",
              "properties": {
                "source_timezone": {
                  "type": "string",
                  "description": "Source IANA timezone name (e.g., 'America/New_York', 'Europe/London'). Use 'America/New_York' as local timezone if no source timezone provided by the user."
                },
                "time": {
                  "type": "string",
                  "description": "Time to convert in 24-hour format (HH:MM)"
                },
                "target_timezone": {
                  "type": "string",
                  "description": "Target IANA timezone name (e.g., 'Asia/Tokyo', 'America/San_Francisco'). Use 'America/New_York' as local timezone if no target timezone provided by the user."
                }
              },
              "required": ["source_timezone", "time", "target_timezone"]
            }
          }
        ]
        
        ```
        
    2. **Call a Tool** 
        
        ```bash
        curl -X POST http://localhost:3000/server1/call-tool \
          -H "Content-Type: application/json" \
          -d '{"tool": "get_current_time", "parameters": {"timezone": "America/New_York"}}'
        ```
        
        Expected response (depending on the tool’s output):
        
        ```json
        {
          "content": [
            {
              "type": "text",
              "text": "{\n  \"timezone\": \"America/New_York\",\n  \"datetime\": \"2025-06-26T12:21:26-04:00\",\n  \"is_dst\": true\n}"
            }
          ]
        }
        
        ```
        

After you have configured the MCP Client Proxy, you can now install this plugin. Please refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

### API #1: Tools

- **Endpoint**: GET /:serverId/tools
- **Description**: Retrieves the list of available tools for the specified MCP server.
- **Parameters**:
    - serverId (path): Identifier of the MCP server.
- **Response** (200):
    
    ```json
    [
      {
        "name": "tool_name",
        "description": "Tool description",
        "parameters": { "key": "type" }
      },
      ...
    ]
    ```
    
- **Error Responses**:
    - 404: {"error": "Server <serverId> not found"}
    - 500: {"error": "Error message"}

### API #2: Call-Tool

- **Endpoint**: POST /:serverId/call-tool
- **Description**: Invokes a specified tool on the specified MCP server with provided parameters.
- **Parameters**:
    - serverId (path): Identifier of the MCP server.
- **Request Body**:
    
    ```json
    {
      "tool": "tool_name",
      "parameters": { "key": "value" }
    }
    ```
    
- **Response** (200):
    
    ```json
    { "content": "Tool execution result" }
    ```
    
- **Error Responses**:
    - 400: `{"error": "Tool <toolName> not found on server <serverId>"}`
    - 404: `{"error": "Server <serverId> not found"}`
    - 500: `{"error": "Error message", "mcp_error": true}`
