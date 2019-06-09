test-deploy :
	rm -r ./dist/*
	python setup.py sdist
	python setup.py bdist_wheel
	twine upload --repository pypitest dist/*

deploy:
	rm -r ./dist/*
	python setup.py sdist
	python setup.py bdist_wheel
	twine upload --repository pypi dist/*

init:
	rm -r ./dist/*
	python setup.py sdist
	python setup.py bdist_wheel


uninstall :
	python setup.py install --record files.txt
	cat files.txt | xargs rm -rf
	rm files.txt
