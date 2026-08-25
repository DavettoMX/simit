from backend.main import main


def test_hello():
    assert main() == "Hello from mlops!"
