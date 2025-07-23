# 🧩 Jenkins Agent with Azure CLI and Azure Functions Core Tools

This Docker image extends the official [`jenkins/inbound-agent:jdk21`](https://hub.docker.com/r/jenkins/inbound-agent) image to include:

- Azure CLI
- Azure Functions Core Tools v4

It is designed to be used as a Jenkins agent for CI/CD pipelines that interact with Azure services or deploy serverless applications using Azure Functions.

---

## 🚀 Features

- ✅ Based on `jenkins/inbound-agent:jdk21`
- ✅ Includes [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/)
- ✅ Includes [Azure Functions Core Tools v4](https://learn.microsoft.com/en-us/azure/azure-functions/functions-run-local)
- ✅ Ready-to-use in Jenkins Docker-based agents
- ✅ Ideal for Azure-based DevOps workflows

---

## 🧰 Use Case

This agent is useful in Jenkins pipelines that:

- Deploy or manage Azure Functions
- Use the Azure CLI to interact with Azure resources
- Automate infrastructure provisioning and cloud operations

---

## 📦 Usage

You can pull the image from Docker Hub:

👉 **[View on Docker Hub](https://hub.docker.com/r/alejandro1999/azure-agent)**

```bash
docker pull alejandro1999/azure-agent:1.0.0
