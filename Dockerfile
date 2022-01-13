FROM alpine:latest

RUN apk add curl
# https://aws.github.io/copilot-cli/docs/getting-started/install/
RUN curl -Lo copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux && chmod +x copilot && mv copilot /usr/local/bin/copilot

ENTRYPOINT ["/usr/local/bin/copilot"]
