import unittest
from .hello import handler


class HelloPythonHandlerTests(unittest.TestCase):
    def test_empty_input(self):
        event = {}
        context = {}

        event['first_name'] = 'You'
        event['last_name'] = 'Win'

        result = handler(event, context)
        self.assertEqual({'message': 'Hello You Win!'}, result)
