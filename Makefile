test-deploy :
	rm -r ./dist/*
	python setup.py sdist
	python setup.py bdist_wheel
	twine upload   --repository-url https://test.pypi.org/legacy/   dist/*

build:
	python setup.py sdist
	python setup.py bdist_wheel


uninstall :
	python setup.py install --record files.txt
	cat files.txt | xargs rm -rf
	rm files.txt
