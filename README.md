# AWS-CI-CD-DEMO
Application Deployed on AWS EC2 Using AWS Developer Tools.
This is a demo Node.js app showcasing **CI/CD deployment to AWS EC2** using **CodePipeline, CodeBuild, and CodeDeploy**.

## Features

- Node.js + Express backend
- Simple **UI with gradient theme**
- Dark/Light mode toggle 🌙☀️
- Version number & last deploy timestamp
- Health check endpoint `/health` ✅
- Watermark: *Project by Ashwin Venkatesan*
- GitHub repo button for personal branding

  ## Folder Structure

  cicd-ec2-demo/
├─ public/
│ ├─ index.html
│ ├─ style.css
├─ server.js
├─ package.json
├─ buildspec.yml # CodeBuild instructions
├─ appspec.yml # CodeDeploy instructions
├─ scripts/ # Deployment scripts (start, stop, install)
└─ .gitignore

## How to Run Locally

1. Install Node.js 18+
2. Clone repo & install dependencies
```bash
npm install
npm start

