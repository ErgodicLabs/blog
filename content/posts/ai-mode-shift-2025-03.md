---
title: "The Model Context Protocol signals a mode shift in AI products"
author: moorkh
date: 2025-03-30
draft: false
tags: ["ai"]
---

The shape of AI products is changing. The user experience is no longer defined by screens and buttons. Models are becoming the user interface. The [Model Context Protocol](https://modelcontextprotocol.io), [released by Anthropic in November of 2024](https://www.anthropic.com/news/model-context-protocol), is a clear signal of this mode shift.

Every app will become an AI app. That won’t change. But it won’t happen because every app adopts AI. It will happen because AI learns to be a power user of every app.


### Last cycle

In the last cycle, AI products looked like AI Dungeon, Jasper.ai, and GitHub Copilot. These apps didn’t expose models directly. Instead, they embedded them behind carefully constructed prompts and application-specific logic. The prompts were fixed and put the models on rails.

Jasper is a particularly clear case. It was early to market and quickly captured attention as a productized application of LLMs for marketing and content creation. Its initial value came entirely from its prompt templates. As soon as users had access to a general-purpose interface like ChatGPT, Jasper's moat disappeared. Why would most users pay more for a separate app when ChatGPT did the same and more for cheaper?

AI Dungeon, Jasper, and Copilot share a common mode of using AI. The application controls the interface. The prompts are fixed. The model serves as an internal function and is not exposed directly to the user. These products were all highly influential when they were launched. Each helped define what it meant to build with LLMs. But they have all lost relevance now. They have been eclipsed by more general-purpose interfaces. AI Dungeon and Jasper have been displaced by ChatGPT. GitHub Copilot, once a breakout success, has been displaced by  model-centric developer tools like Cursor and Windsurf.

Cursor and Windsurf are shaped more like ChatGPT than GitHub Copilot. They place the model at the center of the user experience. For their users, the model is an active collaborator.

### Agents

This transition coincides with the rise of "agents." At this point, the word “agent” is more an SEO keyword than a meaningful term. Anything with a loop, memory, or vector store is branded an agent regardless of its level of actual agency. Most popular agentic frameworks (like LangChain and AutoGPT) don’t represent a fundamentally new mode of using AI. They are frameworks for orchestration, static chains of prompts augmented with memory, retrievers, and tool calls. These systems execute goals in isolation and often remove the user from the loop too early. They simulate autonomy through recursive loops and prompt mutation. In practice this leads to brittle behavior, recursive failure, and drift from user intent. The hype has outpaced the utility.

Some frameworks try to simulate dynamic behavior through prompt rewriting or recursive planning. But this also makes the operation of agents less transparent. In the future, models will determine their own goals. They will modify their own internal representations, their own input tensors, even their own architectures. That future is coming but it is not here yet. Pretending that it is will not bring us success in the next cycle.

### Next cycle

In the near future, AI products will adopt a more interactive structure. Humans will provide high-level intent in real time, and the model will take autonomous action to realize it. Models will take these actions by making use of external tools. This pattern preserves clarity and control for users. Humans shape direction, models handle execution.

For now, it’s easier to keep the user in the loop and let the model handle execution, not purpose. For now, this is what people want. In the current human-AI power dynamic, this is the more palatable design.

In the next cycle, the model itself will become the primary user interface. Users will no longer begin their tasks inside applications. They will begin with ChatGPT, Claude, Grok. These centralized assistants will be where work is initiated, planned, and often completed. They will become the default surface through which users think and act.

Even when interacting with complex tools like Figma, Photoshop, or Notion, users increasingly want to delegate entire projects to their models. They don’t want the AI embedded in the app. They want the AI that they use every day to use the app on their behalf.

Jasper's fall from grace is again instructive. Its value wasn’t in doing something a model couldn’t do. It was obscuring the need for users to interact with the model directly. Once general-purpose interfaces became usable, its earlier position was no longer defensible. The same dynamic now threatens every application that assumes the AI should be embedded, not externalized.

### Model Context Protocol

Anthropic’s introduction of the Model Context Protocol (MCP) by Anthropic marks an important milestone. MCP is a standardized protocol designed to clearly define how AI models communicate and interact with external applications and tools. By standardizing these interactions, MCP directly addresses the brittle, inconsistent integrations seen in earlier agentic frameworks like LangChain or AutoGPT.

This standardization is critical because it enables AI products to reliably and predictably orchestrate tasks across multiple applications, ensuring that user intent can be consistently translated into effective action. It is the infrastructure necessary for the mode shift from narrow embedded AI models toward more flexible, general-purpose model interactions.

MCP is inspired by the Language Server Protocol (LSP), which was instrumental in Visual Studio Code attaining dominance among code editors. If the transformative impact of LSP among developer tools is anything to go by, MCP is going to take the world by storm. MCP has already been adopted by the most significant AI platforms – Anthropic, Cursor, and OpenAI.

MCP servers already demonstrate significant value. For example,

* [GitHub MCP servers](https://github.com/modelcontextprotocol/servers/tree/main/src/github) let programmers seamlessly manage repositories and automate commits directly through AI models.  
* [Blender MCP servers](https://blender-mcp.com/) allow users to control 3D modeling tasks through simple AI prompts, dramatically simplifying complex graphical workflows.

There are already products like [smithery.ai](https://smithery.ai/) which allow power users to add MCP servers to applications which support them. They also make the distribution of MCP servers simple.

The structural shift that MCP represents has deep implications for builders. The AI interface itself is becoming the primary product, while traditional applications transition to backend services. Builders will increasingly focus not on building full-stack applications but on creating surfaces easily addressable by AI models. The value of an application will hinge on how effectively it integrates with and enhances model-driven workflows, rather than direct user interactions alone.

### Open problems

As a builder, the most exciting part of all is how much there is left to figure out. These are just some of the open problems we need to solve to bring about the next cycle of AI products:

#### I. Can open source LLMs participate in the next cycle?

It is critical in the long-term that we have self-hostable implementations of AI models. Otherwise, we will be forced to give corporations like Anthropic and OpenAI access to our most sensitive data with absolutely no alternatives.

This will probably need the cooperation of products like Cursor, Manus.ai, and their peers. These are products which control a lot of the current mindshare but which rely on the big model providers to drive their functionality. The size of their user bases makes them fantastic distribution channels for open source models.

#### II. How can remote access to MCP tools scale?

Currently, most MCP tools run on the same machines as the models which use them. Remote MCP servers will become more and more important in the future. They will prevent users from having to set up MCP servers for every model and every project in which they want to use them. They will also enable multi-agent functionality that isn’t widely available today, like being able to share context and facilitate communication among multiple models.

Current transports for MCP introduce heavy latency to the user experience. What technologies will allow MCP tools to serve low latency and high throughput interactions?

#### III. Should MCP be request/response, or something else?

The current Model Context Protocol *`StreamableHTTP`* specification is ambiguous on whether there can be multiple responses per MCP request, and how such responses should be handled by the clients. This is fair, as this introduces a lot of complexity.

However, if we want context to change dynamically in response to real-world conditions, or if we want models to be able to modify the context of other models proactively, this is exactly the kind of behavior that will need to be specified.

#### IV. How are MCP-exposed tools discovered by models?

Is general-purpose search (e.g. Bing, Google, Brave) sufficient for models to discover useful tools? Or does there need to be an MCP-specific registry/search engine?

If an MCP-specific search engine is required, who curates or indexes the tool ecosystem—models, users, third parties, or an open protocol?

#### V. How should context be composed across many tools without exceeding model limits?

What abstractions allow prioritization, summarization, or selective inclusion of tool state? Can models learn to query tool context selectively and iteratively rather than consuming it all up front? How do we manage structured, heterogeneous, and dynamic context under a fixed token budget?

### Guidelines

If you're building, here are some useful guidelines:

#### Tool surfaces, not apps

Build for invocation, not interaction. Instead of full-stack products, create tools that models can learn to use. Think APIs that describe their own affordances, state machines that expose their shape to LLMs, or real-world systems that accept high-level intents.

#### Shared execution layers

As MCP adoption grows, we’ll need shared environments where models can operate across tools and coordinate across agents. Low-latency, high-throughput servers that handle model-initiated actions will be a key battleground.

#### Model-native UX primitives

Forget screens and buttons. What does undo look like when the user is a model? What does a loading spinner mean in a multi-agent context? There’s a new UX stack to invent—one where models are the users and humans are co-pilots.

#### Defensibility through context, not UI

In this new world, UI is transient. Context is persistent. Products that own proprietary context—data, workflows, structured environments—will define the next defensible layer. This is the new terrain for moats.

**Remember: The UI is no longer the product. The model is. And the model needs a world it can operate.**