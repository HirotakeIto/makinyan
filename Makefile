test-deploy :
	make build
	twine upload   --repository-url https://test.pypi.org/legacy/   dist/*

build:
	python setup.py sdist
	python setup.py bdist_wheel
