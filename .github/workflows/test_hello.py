"""
Unit tests for the hello module.
"""

import unittest
from hello import say_hello

class TestHello(unittest.TestCase):
    """Tests for the say_hello function."""

    def test_say_hello(self):
        """Test that say_hello returns 'Hello, World!'."""
        self.assertEqual(say_hello(), "Hello, World!")

if __name__ == "__main__":
    unittest.main()
