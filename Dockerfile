# Use Go base image
FROM golang:1.21

WORKDIR /app

# Copy the server folder
COPY server ./server

# Build the Sliver server
RUN go build -o sliver-server ./server/main.go

# Expose HTTPS port
EXPOSE 443

# Run the server
CMD ["./sliver-server"]
