# build-node-venv

[![version](https://img.shields.io/npm/v/build-node-venv.svg)](https://www.npmjs.org/package/build-node-venv)
[![status](https://travis-ci.org/ES-Collection/build-node-venv.svg)](https://travis-ci.org/ES-Collection/build-node-venv)

A helper to (re-)build [nodeenv](https://github.com/ekalinin/nodeenv).

## Usage

Install the package using npm:

    npm install build-node-venv --save-dev

Now you can use it as a CLI to rebuild your module:

    buildenv

## Use without install

    curl https://raw.githubusercontent.com/ES-Collection/build-node-venv/master/build-node-venv.sh > ./.bnv.sh && chmod +x ./.bnv.sh && ./.bnv.sh && rm ./.bnv.sh

> Note that you will need [virtualenv](https://pypi.python.org/pypi/virtualenv) installed.

## License

MIT
