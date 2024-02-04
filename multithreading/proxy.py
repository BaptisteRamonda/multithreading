#!/usr/bin/env python

from http.server import BaseHTTPRequestHandler, HTTPServer
from QueueManager import QueueClient


class Proxy(BaseHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        """
        Proxy class constructor.
        """
        # Initialize a QueueClient for handling tasks
        self.client = QueueClient()
        super().__init__(*args, **kwargs)

    def do_GET(self):
        """
        Handle GET requests.
        """
        # Send a 200 OK response
        self.send_response(200)
        # Set content type to application/json
        self.send_header("Content-type", "application/json")
        self.end_headers()
        # Get a task from the QueueClient
        t = self.client.tasks.get()
        # Write the task as JSON to the response
        self.wfile.write(bytes(t.to_json(), "utf-8"))


def run(server_class=HTTPServer, handler_class=Proxy):
    """
    Run the HTTP server.
    """
    # Specify the server address (empty string means listen on all available interfaces)
    server_address = ("", 8000)
    # Create an instance of the HTTP server with the specified handler
    httpd = server_class(server_address, handler_class)
    # Start serving requests indefinitely
    httpd.serve_forever()


if __name__ == "__main__":
    # Run the server if the script is executed
    run()
