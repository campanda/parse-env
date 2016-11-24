# parse-env

[![Build Status](https://travis-ci.com/campanda/parse-env.svg?token=PRynHvZ7NME6aspCEztq&branch=master)](https://travis-ci.com/campanda/parse-env)

Very simple parser to inject environment variables into any file.
Useful to achieve environment-agnostic configuration on files that normally
don't allow access to env variables natively. (ie. [Varnish][0] and [Nginx][1])

## Usage

Given the following file, `my_config.vcl`:

    backend default {
        .host = "{{ some_host }}";
        .port = "{{ some_port }}";
    }

    # ... rest of the file ...

Running this script against the file:

    $ ./parse-env my_config.vcl
    $ cat my_config.vcl
    backend default {
        .host = "foobar.com";
        .port = "8888";
    }

## Develompent

    $ cd test
    $ ./run.sh

### TODOs

* right now, the `sed` command only works on linux, need to adapt it to work
  on BSD/macOS as well.

[0]: https://varnish-cache.org
[1]: https://nginx.org
