build: clean
	pip-compile pyproject.toml --verbose  
	python3 setup.py sdist bdist_wheel
	python3 -m twine upload --repository pypi dist/* --verbose

clean:
	rm -r -f LLMos.egg-info/ dist build

