help:
	@echo "    setup"
	@echo "        Configure the ENV using default env: APP_ENV=development."
	@echo "    tests"
	@echo "        Execute tests in application. NOTE: use make setup APP_ENV=test to install all dependencie of test"
	@echo "    setup APP_ENV={ENV}"
	@echo "        Configure using the ENV."
	@echo "    help"
	@echo "        Show all commands."	

setup: clean-pyc

	@if [ "${APP_ENV}" = "" ]; then\
		pip install -r requirements/development.txt;\
	else \
		pip install -r requirements/$(APP_ENV).txt;\
	fi

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +

	rm -rf builds/

.PHONY: clean-pyc

tests: clean-pyc
	APP_ENV=test pytest --spec --cov-report term-missing --cov=notification tests/

default: setup
