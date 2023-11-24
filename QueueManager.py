import multiprocessing
from multiprocessing.managers import BaseManager

# Define constants for better readability
PORT = 5000
KEY = b'30042001'


# Define a custom QueueManager that inherits from BaseManager
class QueueManager(BaseManager):
    pass


class QueueClient:
    """Base class for users of the Queue."""

    def __init__(self, manager_host="localhost"):
        # Register task and result queues with the QueueManager
        QueueManager.register("get_tasks")
        QueueManager.register("get_results")

        # Connect to the QueueManager
        manager = QueueManager(address=(manager_host, PORT), authkey=KEY)
        manager.connect()

        # Get the task and result queues
        self.tasks = manager.get_tasks()
        self.results = manager.get_results()


if __name__ == "__main__":
    # Create multiprocessing Queues for tasks and results
    task_queue = multiprocessing.Queue()
    result_queue = multiprocessing.Queue()

    # Register task and result queues with the QueueManager
    QueueManager.register("get_tasks", callable=lambda: task_queue)
    QueueManager.register("get_results", callable=lambda: result_queue)

    try:
        # Create and start the QueueManager server
        manager = QueueManager(address=("", PORT), authkey=KEY)
        server = manager.get_server()
        # Inform the user that the manager has started successfully
        print(f"QueueManager server started successfully on port {PORT}.")
        server.serve_forever()

    finally:
        # Print information before exiting
        print(
            f"Exiting with approximately {task_queue.qsize()} items left in the task queue"
            f" and {result_queue.qsize()} items left in the result queue."
        )
