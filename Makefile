.PHONY: format lint typecheck test

format:
	ruff format .
	ruff check . --fix

lint:
	ruff check .

typecheck:
	mypy src

test:
	pytest
