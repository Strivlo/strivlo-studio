## Strivlo Studio

Strivlo Studio is an AI-powered development environment that generates full web applications from natural language prompts.

Users describe the application they want to build, and the system generates a working project environment with a live preview and editable source code. The platform explores how AI agents can assist developers by accelerating the early stages of software development.

Strivlo Studio is built as part of the Strivlo platform, an initiative focused on building intelligent execution systems and AI-assisted infrastructure.


## Overview

Modern development tools are increasingly incorporating AI to assist engineers in building applications more efficiently. Strivlo Studio explores this concept by allowing users to generate projects using natural language instead of manually creating the initial project structure.

The system interprets prompts, generates a project environment, and presents both a live preview and the underlying source code. This allows developers to inspect, modify, and extend the generated project.

The goal of the project is to demonstrate how AI-assisted tooling can integrate into modern development workflows.


## Key Features

• AI agent capable of generating and modifying code

• Sandboxed code execution using E2B environments

• Project creation and management system

• Persistent AI conversation history

• Code fragment viewer for generated outputs

• Secure authentication with Clerk

• Usage billing infrastructure

• Fully deployed production application


## Tech Stack

### Frontend

Next.js, 
React, 
TailwindCSS

### Backend

tRPC, 
Prisma ORM, 
PostgreSQL

### Infrastructure

Inngest – background workflow orchestration

E2B – sandboxed code execution environments

Clerk – authentication and user management

Vercel – deployment and hosting


## System Architecture

Strivlo follows an AI workflow architecture where user requests trigger agent-driven workflows.

```
User Input
    ↓
AI Agent
    ↓
Inngest Workflow
    ↓
Sandbox Execution (E2B)
    ↓
Generated Files & Results
    ↓
Database Persistence (Prisma / PostgreSQL)
    ↓
Rendered in the Application UI
```

This architecture enables safe execution of generated code while maintaining project state and interaction history.


## Project Structure

```
src/
 ├ api/            → tRPC API routes
 ├ components/     → UI components
 ├ features/       → project and message systems
 ├ ingest/         → AI agent workflows
 ├ prisma/         → database schema
 └ app/            → Next.js application routes
```


## Project Context

Strivlo Studio was developed as part of a portfolio project exploring AI-assisted development tools and modern full-stack application architecture.

The project demonstrates the integration of modern web technologies with AI-driven workflows to simulate an intelligent development environment.


## Running Locally

Install dependencies

```
npm install
```

Start the development server

```
npm run dev
```

The application will run at

```
http://localhost:3000
```


## Deployment

The application is deployed on **Vercel** and connected to a PostgreSQL database with serverless infrastructure.

Live version:

[https://strivlostudio.vercel.app/](https://strivlostudio.vercel.app/)


## About Strivlo

Strivlo is a platform focused on building intelligent execution systems and AI-driven infrastructure. Strivlo Studio represents one of the early explorations of how AI agents can assist developers in building and managing software systems.

Strivlo was built as part of a portfolio focused on modern AI development systems, full-stack architecture, and agent-driven software workflows.


## Author

Rekan

Computer Science Student

Founder of Strivlo