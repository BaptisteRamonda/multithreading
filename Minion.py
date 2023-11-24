from QueueManager import QueueClient


class QueueConsumer:
    def __init__(self):
        # Initialize the QueueClient, which is responsible for managing task and result queues
        self.client = QueueClient()

    def process_tasks(self):
        # Continuously loop to process tasks
        while True:
            # Get a task from the task queue
            print("Listening...")
            task = self.client.tasks.get()
            print("Received")

            # Execute the 'work' method of the task
            task.work()

            # Put the result (task identifier and execution time) into the result queue
            self.client.results.put((task.identifier, task.time))

            # Print a message indicating that the minion processed the task
            print(f"Minion processed task {task.identifier} in {task.time:.4f} seconds")


if __name__ == "__main__":
    # Create an instance of the QueueConsumer class
    minion = QueueConsumer()

    # Start processing tasks using the created consumer instance
    minion.process_tasks()
