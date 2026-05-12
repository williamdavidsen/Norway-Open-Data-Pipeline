.PHONY: install format lint typecheck test coverage

install:
	pip install -e ".[dev]"

format:
	ruff format .

lint:
	ruff check .

typecheck:
	mypy src

test:
	pytest -q

coverage:
	pytest --cov=src --cov-report=term-missing
