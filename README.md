# build-node-venv

A helper to (re-)build [nodeenv](https://github.com/ekalinin/nodeenv).

## install:

    npm install build-node-venv --save-dev

Add `env` to `scripts` in your `package.json` for quick rebuilds:

```
"scripts": {
  "env": "build-node-venv && # npm install && npm update"
}
```

> Note that you will need to have [virtualenv](https://pypi.python.org/pypi/virtualenv) installed.

