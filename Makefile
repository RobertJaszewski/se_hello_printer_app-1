.PHONY: deps test

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

make test:
	PYTHONPATH=. py.test
	PYTHONPATH=. py.test --verbose -s

make run:
	python main.py
