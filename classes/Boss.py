import time
from classes.Task import Task
from QueueManager import QueueClient


class QueueProducer:
    def __init__(self):
        # Initializing a QueueClient instance as a client
        self.client = QueueClient()

    def add_task(self, identifier, size=None):
        # Creating a Task instance with the given identifier and size
        task = Task(identifier, size)

        # Putting the task into the queue managed by the client
        self.client.tasks.put(task)

        # Printing a message indicating the task addition
        print(f"Boss added task {identifier} to the queue.")


if __name__ == "__main__":
    # Creating an instance of QueueProducer called 'boss'
    boss = QueueProducer()

    # Infinite loop to continuously add tasks to the queue
    while True:
        try:
            # Getting user input for the number of tasks to add
            task_count = int(input("Enter the number of tasks to add (0 to quit): "))

            # Exiting the loop if the user enters 0
            if task_count == 0:
                break

            # Adding the specified number of tasks to the queue
            for i in range(task_count):
                boss.add_task(i, 6000)

        # Handling the case where the user enters a non-integer value
        except ValueError:
            print("Please enter a valid number.")

    # Waiting for 10 seconds after the loop before exiting the script
    time.sleep(10)
