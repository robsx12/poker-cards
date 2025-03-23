# Use official Go image as base
FROM golang:1.23.5-alpine

# Set working directory
WORKDIR /app

# Copy go mod and sum files
#COPY go.mod go.sum ./

# Download all dependencies
#RUN go mod download

# Copy the source code
COPY . .

# Build the application
RUN go build -o main .

# Expose port (adjust if needed)
EXPOSE 8080

# Run the application
CMD ["./main"]