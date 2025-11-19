import unittest
import json
from app.main import app

class TestApp(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def test_home_status_code(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)

    def test_home_content(self):
        response = self.app.get('/')
        data = json.loads(response.data.decode('utf-8'))
        self.assertIn("Hola", data["message"])
        self.assertEqual(data["status"], "ok")

if __name__ == '__main__':
    unittest.main()
