# ====== For development purposes ======
test:
	python3 -m pytest

# ====== For releasing purposes ======
install_required:
	# These are required packages for you to be able to build this pip package
	python3 -m pip install --user --upgrade setuptools wheel twine

build_package:
	python3 setup.py sdist bdist_wheel

push_to_pypi:
	python3 -m twine upload dist/*
