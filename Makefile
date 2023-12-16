SHELL := /bin/sh

# Disable generate cache bytecode
export PYTHONDONTWRITEBYTECODE=1

install:
	mkdir -p ${PWD}/venv/vendor
	pip install --target=${PWD}/venv/vendor git+https://github.com/radroxx/Brigadier.git@test

test:
	cd venv && PYTHONPATH=vendor python3 -m test

run:
	cd venv && PYTHONPATH=vendor python3 -m brigadier initdb
	#render --node dce20dc

http:
	cd venv && PYTHONPATH=vendor python3 -m gunicorn brigadier.http:app --bind 127.0.0.1:8080 --worker-class aiohttp.GunicornUVLoopWebWorker

clean:
	rm -Rf venv/

# vim: ts=4 sw=4 sts=4 sta ai number mouse-=a list lcs=tab\:-->,trail\:·,nbsp\:· :
