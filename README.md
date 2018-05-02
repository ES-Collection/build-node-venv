# build-node-venv

[![version](https://img.shields.io/npm/v/build-node-venv.svg)](https://www.npmjs.org/package/build-node-venv)
[![status](https://travis-ci.org/ESCPP/build-node-venv.svg)](https://travis-ci.org/ESCPP/build-node-venv)

A helper to (re-)build [nodeenv](https://github.com/ekalinin/nodeenv).

## Usage

First, install the package using npm:

    npm install build-nodeenv --save-dev

Then you can use it as a CLI to rebuild your module:

    build-nodeenv

You can also add it to you package.json like so:

    "scripts": {
      "env": "build-nodeenv"
    }

## No Node

In case you have no Node running outside your virtual environment, you can download and run the build script like so:

    curl https://raw.githubusercontent.com/ESCPP/build-node-venv/master/build-node-venv.sh  > ./build-node-venv.sh && chmod +x ./build-node-venv.sh && ./build-node-venv.sh

This will create the virtual environment so you will be able to reset from here as normal.

> Note that you will need [virtualenv](https://pypi.python.org/pypi/virtualenv) installed.

## License

MIT
