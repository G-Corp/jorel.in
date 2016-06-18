# Installation

_Jorel_ can be use as a command line tool, as an [erlang.mk](http://erlang.mk) plugin, a [rebar3](http://www.rebar3.org/) plugin or as a [mix](http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html) task.

> Jorel does not work on Windows (yet).

## Command line

To use _Jorel_ in command line, [download](https://github.com/emedia-project/jorel/wiki/jorel) _Jorel_, make it executable and place it in your `PATH`. 

You will need a [_release specification file_](/configuration).

You can now use _Jorel_ by invoking it in your terminal.

```
jorel [command] [options]
```

See [commands](/commands) and [options](/options) for more information.

## erlang.mk plugin

To use the [erlang.mk](http://erlang.mk) plugins, add _Jorel_ as a build (`BUILD_DEPS`) and plugin (`DEP_PLUGINS`) dependency in your `Makefile`.

```
DEP_PLUGINS = jorel
BUILD_DEPS = jorel
dep_jorel = git https://github.com/emedia-project/jorel.git master
```

As when using _Jorel_ as a command line tool, you can create a [_release specification file_](/configuration).

> When using the erlang.mk plugin, if the release specification file does not exist, _Jorel_ will automaticaly create it by invoking the `gen_config` provider.

Then you can run `make jorel.release` to create a release with _Jorel_.

You can invoke any provider by using the `jorel.exec` target and passing the provider to use with the `cmd` parameter. 

```
make jorel.exec cmd=tar
```

The `jorel.exec` target accept the following parameters :

* `o` : to specify the output directory (see the `--output-dir` option).
* `n` : to specify the release name (see the `--relname` option).
* `v` : to specify the release version (see the `--relvsn` option).
* `c` : to specify the configuration file to use (see the `--config` option).

```
make jorel.exec cmd=tar c=custom.config o=_rel
```

## Rebar3 plugin

To use _Jorel_ with [rebar3](http://www.rebar3.org/), add [rebar3_jorel](https://github.com/emedia-project/rebar3_jorel) in the plugin section :

```erlang
{plugins, [rebar3_jorel]}.
```

or

```erlang
{plugins, [
  {rebar3_jorel, {git, "https://github.com/emedia-project/rebar3_jorel.git"}}
]}.
```

This add the following tasks to `rebar3` :

* `jorel deb` : Create a Debian package with your release
* `jorel dockerize` : Create a Docker image with your release
* `jorel gen_config` : Create a default release configuration file (for test only)
* `jorel release` : Release your app
* `jorel tar` : Create a Tar archive with your release
* `jorel zip` : Create a Zip archive with your release

With _renar3_jorel_, the configuration is placed in your `rebar.config` file, under the `jorel` section. See [_release specification file_](/configuration) for more information.

If you do not specify any configuration information, _Jorel_ will generate a default one when you run a _Jorel_ with `rebar3`.

## Mix task

To use _Jorel_ in an [Elixir](http://elixir-lang.org/) project, you can use [jorel_mix](https://github.com/emedia-project/jorel_mix).

Add `jorel_mix` in your project dependencies.

```elixir
{:jorel_mix, "~> 0.0.1"}

# or

{:jorel_mix, ~r/.*/, git: "https://github.com/emedia-project/jorel_mix.git", branch: "master"},
```

This dependencie add the following tasks to your `mix` :

* `jorel.deb` : Create a Debian package with your release
* `jorel.dockerize` : Create a Docker image with your release
* `jorel.gen_config` : Create a default release configuration file (for test only)
* `jorel.release` : Release your app
* `jorel.tar` : Create a Tar archive with your release
* `jorel.zip` : Create a Zip archive with your release

With _jorel_mix_, the configuration is placed in your `mix.exs` file, returned by the `jorel` function. See [_release specification file_](/configuration) for more information.

If you do not specify any configuration information, _Jorel_ will generate a default one when you run a _Jorel_ with `mix`.

