# Ansible weareinteractive.php5_newrelic role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-php5-newrelic.svg)](https://travis-ci.org/weareinteractive/ansible-php5-newrelic)
[![Galaxy](https://img.shields.io/badge/galaxy-weareinteractive.php5_newrelic-blue.svg)](https://galaxy.ansible.com/weareinteractive/php5-newrelic)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-php5-newrelic.svg)](https://github.com/weareinteractive/ansible-php5-newrelic)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-php5-newrelic.svg)](https://github.com/weareinteractive/ansible-php5-newrelic)

> `weareinteractive.php5_newrelic` is an [Ansible](http://www.ansible.com) role which:
>
> * installs newrelic php agent
> * configures newrelic php agent
>
> Note: Tests are failing due to invalid key

## Installation

Using `ansible-galaxy`:

```shell
$ ansible-galaxy install weareinteractive.php5_newrelic
```

Using `requirements.yml`:

```yaml
- src: weareinteractive.php5_newrelic
```

Using `git`:

```shell
$ git clone https://github.com/weareinteractive/ansible-php5-newrelic.git weareinteractive.php5_newrelic
```

## Dependencies

* Ansible >= 2.4
**Note:**

> Since Ansible Galaxy supports [organization](https://www.ansible.com/blog/ansible-galaxy-2-release) now, this role has moved from `franklinkim.php5-newrelic` to `weareinteractive.php5-newrelic`!

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```yaml
---
# newrelic_license_key: yourkey
# php5_newrelic_extra_config:
#   newrelic.enabled: true

# Sets the name of the file to send log messages to.
php5_newrelic_logfile: /var/log/newrelic/php_agent.log
# Sets the level of detail to include in the log file.
php5_newrelic_loglevel: info
# Sets the name of the file to send daemon log messages to.
php5_newrelic_daemon_logfile: /var/log/newrelic/newrelic-daemon.log
# Sets the level of detail to include in the daemon log.
php5_newrelic_daemon_loglevel: info
# Enables high security for all applications.
php5_newrelic_high_security: no
# Sets the name of the application that metrics will be reported into.
php5_newrelic_appname: myapp
# Sets the desination location of the newrelic.ini file
# Note: for php7 it's /etc/php/7.0/mods-available
php5_newrelic_config_dest: /etc/php5/mods-available
# Writes other config options to newrelic.ini.
php5_newrelic_extra_config: {}

```


## Usage

This is an example playbook:

```yaml
---
- hosts: all
  become: yes
  roles:
    - weareinteractive.apt
    - weareinteractive.php5
    - franklinkim.newrelic
    - weareinteractive.php5-newrelic
  vars:
    newrelic_license_key: ab2fa361cd4d0d373833cad619d7bcc424d27c16
    php5_newrelic_appname: "My App"
    php5_newrelic_extra_config:
      newrelic.enabled: true
    php5_newrelic_config_dest: "{{ php5_module_path }}"

```


## Testing

```shell
$ git clone https://github.com/weareinteractive/ansible-php5-newrelic.git
$ cd ansible-php5-newrelic
$ make test
```

## Contributing
In lieu of a formal style guide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

*Note: To update the `README.md` file please install and run `ansible-role`:*

```shell
$ gem install ansible-role
$ ansible-role docgen
```

## License
Copyright (c) We Are Interactive under the MIT license.
