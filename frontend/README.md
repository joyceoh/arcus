# Vue 3 + TypeScript + Vite

### Background
This is an application built from personal experience with patients on both the one giving care and as the one receiving it. I wanted to create a consolidated platform that people can easily access information and keep others updated on their cancer journey. This consists of personal timeline and record keeping as well as various communities built to give support and recommendation. No one knows the experience as much as those going through the motions.

### conventions
filenames will have dashes all lowercase
functions are camelCase


### Development Notes

#### Tech Stack
Backend built with Python + Django
Frontend built with Vue in TS + Vite 

#### Setup
take a look at the Makefile to find the needed scripts.
1. Install dependencies: `Make frontend-install` or/and `Make backend-install`
2. Running environement: `Make <script>`
    • for both FE and BE: `dev` 
    • FE: `dev-frontend`
    • BE: `dev-backend`
    • production: `build`
3. Running all tests: `Make test`
4. Running linter: `Make lint`
4. Clean repo: `Make clean`



