import time
import json
import numpy as np


class Task:

    def __init__(self, identifier, size=None, a=None, b=None, x=None, t=None):
        # Unique identifier for the task
        self.identifier = identifier

        # Choose the size of the problem. If 'size' is not provided, generate a random size between 300 and 3,000.
        self.size = size or np.random.randint(300, 3_000)

        # Generate the input of the problem: a random matrix 'a' of size (self.size, self.size) and
        # a random vector 'b' of size self.size
        self.a = a if a is not None else np.random.rand(self.size, self.size)
        self.b = b if b is not None else np.random.rand(self.size, self.size)

        # Prepare room for the results: initialize an array 'x' of zeros with the same size as 'b'
        self.x = x if x is not None else np.zeros(self.size)

        # Initialize the 'time' attribute to 0
        self.time = t or 0

    def work(self):
        # Record the start time
        start = time.perf_counter()

        # Solve the linear system of equations Ax = b and store the result in the 'x' attribute
        self.x = np.linalg.solve(self.a, self.b)

        # Calculate the time taken for the computation and store it in the 'time' attribute
        self.time = time.perf_counter() - start

    def to_json(self) -> str:
        """
        Convert the Task object to a JSON-formatted string.
        """
        task_dict = {
            'identifier': self.identifier,
            'size': self.size,
            # Convert NumPy array to a nested list
            'a': self.a.tolist(),
            'b': self.b.tolist(),
            'x': self.x.tolist(),
            'time': self.time
        }
        return json.dumps(task_dict, indent=2)

    @classmethod
    def from_json(cls, text: str) -> "Task":
        """
        Create a Task object from a JSON-formatted string.
        """
        task_dict = json.loads(text)

        # Convert nested lists back to NumPy arrays
        task_dict['a'] = np.array(task_dict['a'])
        task_dict['b'] = np.array(task_dict['b'])
        task_dict['x'] = np.array(task_dict['x'])

        # Create a new Task object using the dictionary
        return cls(identifier=task_dict['identifier'], size=task_dict['size'], a=task_dict['a'],
                   b=task_dict['b'], x=task_dict['x'])

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
