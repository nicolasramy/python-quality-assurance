# Python Quality Assurance

## Vision

A Docker image containing tools to ensure the code quality in Python


## Ethics

This project operates under the W3C's [Code of Ethics and Professional Conduct](https://www.w3.org/Consortium/cepc):

We hope that our community group act according to these guidelines, and that
participants hold each other to these high standards. If you have any questions
or are worried that the code isn't being followed, please contact the owner of the repository.

## Language

The development language is English. 
All comments and documentation should be written in English, 
so that we don't end up with “franglais” methods, and so 
we can share our knowledge with developers around the world.

However, the domain language is French. 
We consider each tax, collecting organism and French regulation as a domain-specific term. 
In the same fashion, well-known abbreviations of these domain-specific terms are accepted.

## Usage

### Build the image

```shell
docker build --rm -t ghcr.io/nicolasramy/python-quality-assurance:master .
```

### Default run

```shell
docker run --rm -it -v $PWD/app:/app ghcr.io/nicolasramy/python-quality-assurance:master
```

### Black

```shell
docker run --rm -it -v $PWD/app:/app ghcr.io/nicolasramy/python-quality-assurance:master black . -tpy310 -l80
```

### Flake8

```shell
docker run --rm -it -v $PWD/app:/app ghcr.io/nicolasramy/python-quality-assurance:master flake8 \
            --select=C,E,F,W,DJ \
            --max-line-length 80 \
            --max-complexity 15 \
            --ignore=W503
```

## Contributing

### Development

We're really happy to accept contributions from the community, 
you will have more information in [CONTRIBUTE](CONTRIBUTE.md) file! 
There are many ways to contribute, 
even if you're not a technical person.

We're using the Git Glow [Github flow](https://guides.github.com/introduction/flow/) 
to accept modifications (even internally), basically you'll have to:

1. Create an issue related to the problem you want to fix (good for traceability and cross-reference).
2. Create a branch (optionally with the reference to the issue in the name).
3. Hack hack hack.
4. Commit incrementally with readable and detailed commit messages.
5. Submit a pull-request against the develop branch of this repository.

## Versioning

Version numbering follows the [Semantic versioning](http://semver.org/) approach.

## License

You will have more information in [LICENSE](LICENSE) file
