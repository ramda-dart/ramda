test:
	flutter test

coverage:
	flutter test --coverage

coverage-html:
	genhtml coverage/lcov.info -o coverage/html

coverage-serve:
	dhttpd --path coverage/html

docs:
	dartdoc

docs-clear:
	rm -r docs

docs-serve:
	dhttpd --path doc/api