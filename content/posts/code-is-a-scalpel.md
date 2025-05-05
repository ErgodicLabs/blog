---
title: "Code is a scalpel, prose is a chainsaw"
author: zomglings
date: 2025-05-05
draft: false
tags: ["ai", "programming", "code"]
---

Every time I sit down to program these days, there is an annoying thought in the back of my mind that I should be programming with AI.
While I have had some good experiences building things with Cursor and especially with Claude Code, I have also found that it is a waste
of my time to use them when working on complex programs using tools that I am very comfortable with.

It is very clear to me that AI will overtake human ability to create and improve computer programs in the long run. It isn't there yet.
It won't get there by pair programming with us the way that Claude Code, Cursor, or Windsurf do.

Here is why I think that the current crop of AI code assistants has the wrong form, and what a right form is:

### I. Code is an efficient representation of thought

Programming languages offer us concise and precise ways to tell a computer what we would like for it to do.
[Some languages](https://en.wikipedia.org/wiki/APL_(programming_language)) are more concise than others. But
any programming language is more concise and precise than any natural language.

### II. The prompts we create for LLMs are extremely verbose representations of our thoughts

Accurately conveying our desires about a program we are building to a Large Language Model (LLM) requires us to
be extremely verbose. We require precision, which requires context, which we must provide in natural language, which is
both more verbose and more ambiguous than code.

[Edsger Dijkstra](https://en.wikipedia.org/wiki/Edsger_W._Dijkstra), in
[EWD 667: On the foolishness of "natural language programming"](https://www.cs.utexas.edu/~EWD/transcriptions/EWD06xx/EWD667.html),
discusses this in more detail. He also points out that people may be getting poorer in their use of language, which will exacerbate the problem of
being able to communicate effectively with computers in natural languages.

### III. Programmers communicate better in code than prose

Programmers spend a lot of their lives learning to formulate their ideas as code. Once a programmer has developed this skill to some minimal level,
it is much more efficient for them to represent technical ideas as code rather than in natural language. Being forced to use a natural language instead of
code is really painful for me, and I think this true of most programmers.

### IV. AI peering vs. AI pairing

The models provided by Open AI, Anthropic, etc. already have more knowledge than any human does. My greatest successes in using these models for programming
have come from exploiting this fact. Although I find it really exhausting to try and prompt AI to write a program for me, I find it refreshing when it teaches me things
I didn't know, or when it reviews code that I've written.

Another source of successes is very small, well-scoped tasks that I can test and review easily. These are tasks that Claude Code can typically complete in a single shot without additional prompting.

This has made me realize that, rather than pair with AI, I would much prefer:
1. Live interactions involving me learning from the AI.
2. Offline interactions grounded in code and diffs. Communication purely over Pull Requests.

The first item is already possible. I see that there are a few AI companies working on making my second preference possible. And I don't have to leave it to them
to implement what I want - I also know of several individuals building such tooling for themselves.

I suspect the coming year will see us move from AI assistants such as Claude Code and Cursor to AI peers who operate autonomously over code and only interact with
us when they want to push a change.
