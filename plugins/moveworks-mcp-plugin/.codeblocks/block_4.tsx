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
