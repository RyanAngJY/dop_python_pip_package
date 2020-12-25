# ====== For development purposes ======
test:
	python -m pytest

# ====== For releasing purposes ======
install_required:
	# These are required packages for you to be able to build this pip package
	python -m pip install --upgrade setuptools wheel twine

build_package:
	rm -rf ./dist ./build
	python setup.py sdist bdist_wheel

push_to_pypi:
	make build_package
	python -m twine upload --skip-existing dist/*
