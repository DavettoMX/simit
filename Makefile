# Makefile for MLOps monorepo with uv

deps:
	uv sync

test:
	python -m pytest -vv backend/tests/

format:
	black --target-version py311 backend/

lint:
	pylint --disable=R,C backend/main.py

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type d -name .pytest_cache -exec rm -rf {} +

all: deps format lint test clean
