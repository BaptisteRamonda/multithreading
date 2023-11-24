import unittest
from classes.Task import Task


class TestTaskEquality(unittest.TestCase):

    def test_task_equality(self):
        # Instantiate the first Task object with an identifier
        a = Task(identifier="task1")

        # Serialize the first Task object to JSON
        txt = a.to_json()

        # Instantiate the second Task object from the serialized JSON
        b = Task.from_json(txt)

        # Check if a == b
        self.assertEqual(a, b)

    def test_task_inequality(self):
        # Instantiate two different Task objects
        a = Task(identifier="task1")
        b = Task(identifier="task2")

        # Check that a != b
        self.assertNotEqual(a, b)

    def test_edge_case(self):
        # Test an edge case with the smallest size
        a = Task(identifier="edge_case", size=1)

        # Serialize and deserialize
        txt = a.to_json()
        b = Task.from_json(txt)

        # Check if a == b
        self.assertEqual(a, b)


if __name__ == '__main__':
    unittest.main()
