build:
	./lambda.sh

lint:
	flake8 src/constants.py
	flake8 src/client.py
	flake8 src/utils.py
	flake8 src/dashboards/SummaryDashboard.py
	flake8 src/dashboards/ActivityStreamExperimentDashboard.py
	flake8 src/tests/base.py
	flake8 src/tests/test_redash.py
	flake8 src/tests/test_summary_dashboard.py
	flake8 src/test/test_utils.py
	flake8 src/tests/test_activity_stream_experiment_dashboard.py

test: lint
	nosetests --with-coverage --cover-package=src
