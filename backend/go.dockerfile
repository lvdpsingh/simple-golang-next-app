# Start from the latest golang base image
FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

#Download and install the dependencies:
RUN go get -d -v ./...

#Build the Go app:
RUN go build -o api .

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the executable
CMD ["./api"]
