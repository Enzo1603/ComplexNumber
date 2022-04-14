SRC_CORE=complex_number
SRC_TEST=tests
SRC_BENCHMARK=benchmarks

PYTHON=python
PIP=pip

help:
	@echo "Available Commands:"
	@echo " test                    - Run unit tests."
	@echo " test-coverage           - Run unit tests and code coverage."
	@echo " tests-coverage-html      - Run unit tests, code coverage and generate html."
	@echo " benchmark                - Run benchmark tests."

test:
	$(PYTHON) -m pytest $(SRC_TEST)

test-coverage:
	$(PYTHON) -m pytest --cov=$(SRC_CORE) $(SRC_TEST)
	$(PYTHON) -m codecov


test-coverage-html:
	$(PYTHON) -m pytest --cov=$(SRC_CORE) $(SRC_TEST) --cov-report=html
