#Release specification file

Configuration is done via en Erlang key-value file (default : `jorel.config`) when using the [command line tool](/installation/#command-line) or the [erlang.mk plugin](/installation/#erlangmk-plugin). 

For [jorel_mix](/installation/#mix-task), the configuration can be placed in a `jorel/0` function in your `mix.exs` file.

With [rebar3_jorel](/installation/#rebar3-plugin), the configuration can be placed in a `jorel` section in your `rebar.config`.

##release

`include_erts` : `true | false | filename() | url()` (default: `true`)

`release`

`output_dir` : `filepath()` 

`all_deps` : `true | false` (default: `false`)

`boot` : `all | [atom()]` (default: `all`)

`include_src` : ̀ true | false` (default: `false`)

`sys_config` : `false | filename()` (default: `false`)

`vm_args` : `false | filename()` (default: `false`)

`env` : `atom()` (default: `prod`)

`disable_relup` : `true | false` (default: `false`)

`exclude_dirs` : `[pattern()]` (default: `["**/_jorel/**", "**/_rel*/**", "**/test/**"]`)

`ignore_deps` : `[atom()]` (default: `[]`)

`init_sources` : `[string()] | string()` (default: `[]`)

`providers` : `[atom()]` (default: `[jorel_provider_release, jorel_provider_providers, jorel_provider_config]`)

##artifactory

`artifactory/deploy` : `zip | tar` (default: `zip`)

`artifactory/url` : `url()` (default: `ENV[ARTIFACTORY_URL`)

`artifactory/repository` : `string()` (default: `ENV[ARTIFACTORY_REPOSITORY]`)

`artifactory/username` : `string() | env | undefined` (default: `undefined`)

`artifactory/password` : `string() | env | undefined` (default; `undefined`)

##deb

`deb/author_name`

`deb/author_email`

`deb/package_url`

`deb/package_git`

`deb/package_depends`

`deb/package_shortdesc`

`deb/package_desc`

`deb/copyright`

`deb/install_user`

`deb/install_user_desc`

`deb/license_type`

##rpm

`rpm/package_summary`

`rpm/package_group`

`rpm/license_type`

`rpm/package_url`

`rpm/build_architecture`

`rpm/package_description`

`rpm/author_name`

`rpm/author_email`

##dockerize

`dockerize/from`

`dockerize/remove_origins`

`dockerize/remove_dockerfiles`

`dockerize/output_dir`

`dockerize/clean_build`

`dockerize/maintainer`

`dockerize/build/from`

`dockerize/build/prebuild/run`

`dockerize/build/prebuild/env`

`dockerize/build/prebuild/entrypoint`

`dockerize/build/postbuild/run`

`dockerize/build/postbuild/env`

`dockerize/build/postbuild/entrypoint`

`dockerize/release/from`

`dockerize/release/prerelease/run`

`dockerize/release/prerelease/env`

`dockerize/release/prerelease/entrypoint`

`dockerize/release/postrelease/run`

`dockerize/release/postrelease/env`

`dockerize/release/postrelease/entrypoint`

