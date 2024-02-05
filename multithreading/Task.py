import time
import json
import numpy as np


class Task:

    def __init__(self, identifier, size=None):
        # Unique identifier for the task
        self.identifier = identifier

        # Choose the size of the problem. If 'size' is not provided, generate a random size between 300 and 3,000.
        self.size = size or np.random.randint(100, 1000)

        # Generate the input of the problem: a random matrix 'a' of size (self.size, self.size) and
        # a random vector 'b' of size self.size
        self.a = np.random.rand(self.size, self.size)
        self.b = np.random.rand(self.size)

        # Prepare room for the results: initialize an array 'x' of zeros with the same size as 'b'
        self.x = np.zeros(self.size)

        # Initialize the 'time' attribute to 0
        self.time = 0

    def work(self):
        # Record the start time
        start = time.perf_counter()

        # Solve the linear system of equations Ax = b and store the result in the 'x' attribute
        self.x = np.linalg.solve(self.a, self.b)

        # Calculate the time taken for the computation and store it in the 'time' attribute
        self.time = time.perf_counter() - start

    def to_json(self) -> str:
        # serialize args of the current instantiation
        data = {
            "identifier": self.identifier,
            "size": self.size,
            "A": self.a.tolist(),
            "X": self.x.tolist(),
            "b": self.b.tolist(),
            "execution_time": self.time,
        }

        # convert the dictionary in json
        return json.dumps(data)

    @classmethod
    def from_json(cls, text: str) -> "Task":
        """
        Create a Task object from a JSON-formatted string.
        """
        # Parse JSON string into a dictionary
        data = json.loads(text)

        # Create a Task object using data from the JSON dictionary
        task = cls(identifier=data["identifier"], size=data["size"])

        # Convert lists in the JSON data to NumPy arrays
        task.a = np.array(data["a"])
        task.b = np.array(data["b"])
        task.x = np.array(data["x"])

        # Assign the 'time' value from the JSON data
        task.time = data["time"]

        # Return the initialized Task object
        return task

    def __eq__(self, other: "Task") -> bool:
        """
        Check if two Task objects are equal.
        """
        # Check if all attributes are equal
        return (
                self.identifier == other.identifier
                and self.size == other.size
                and np.array_equal(self.a, other.a)
                and np.array_equal(self.b, other.b)
                and np.array_equal(self.x, other.x)
                and self.time == other.time
        )
