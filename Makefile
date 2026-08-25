# Makefile for Python project with uv
PYTHON := python3

deps:
	uv pip install -r requirements.txt

test:
	python -m pytest -vv tests/

format:
	black --target-version py311 .

lint:
	pylint --disable=R,C main.py

clean:
	rm -rf __pycache__ .pytest_cache \
		rm -rf tests/__pycache__

all: deps format lint test clean
