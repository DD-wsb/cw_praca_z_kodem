import pytest
from app import hello

def test_hello_world():
    assert hello() == "Hello World!"