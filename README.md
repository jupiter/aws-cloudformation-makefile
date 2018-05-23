# aws-cloudformation-makefile
Framework-free development lifecycle example for AWS CloudFormation (with [SAM](https://github.com/awslabs/serverless-application-model)) incl. Python Lambdas

## Installation

To make a local Python virtual env and install dependencies specified in requirements.txt:

```
$ make activate
$ make install
```

## Configuration

Custom parameters defined in your [CloudFormation template](./template.yaml) can
have overrides specified in [template_params.txt](./template_params.txt).

## Deployment

Before deployment your Lambda code is uploaded to your deployment bucket using the AWS
CLI package command.

```
$ make package
$ make deploy
```

## Tests

I've also added shortcuts for running tests, i.e. `make test` and `make watch`, which
can of course be used in a CI environment as well.
