FROM jenkins/inbound-agent:jdk21

LABEL \
  org.opencontainers.image.authors="Alejandro López <https://github.com/alopezfu>" \
  org.opencontainers.image.title="Jenkins agent" \
  org.opencontainers.image.version="1.0.0" \
  org.opencontainers.image.description="Jenkins agent with Azure CLI and Azure Functions Core Tools"

USER root

# Install Azure CLI and Azure Functions Core Tools
RUN apt update && \
    apt install -y \
        curl \
        unzip \
        gnupg \
        ca-certificates \
        lsb-release \
        software-properties-common && \
    # Azure CLI
    curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/microsoft.gpg && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/azure-cli.list && \
    echo "deb [arch=amd64] https://packages.microsoft.com/debian/$(lsb_release -rs 2>/dev/null | cut -d'.' -f 1)/prod $(lsb_release -cs 2>/dev/null) main" > /etc/apt/sources.list.d/dotnetdev.list && \
    apt update && \
    apt install -y azure-cli azure-functions-core-tools-4 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default user back to jenkins
USER jenkins

# Set the entrypoint to the Jenkins agent
ENTRYPOINT ["/usr/local/bin/jenkins-agent"]
