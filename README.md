# Ansible Php5-newrelic Role

[![Build Status](https://travis-ci.org/weareinteractive/ansible-php5-newrelic.png?branch=master)](https://travis-ci.org/weareinteractive/ansible-php5-newrelic)
[![Stories in Ready](https://badge.waffle.io/weareinteractive/ansible-php5-newrelic.svg?label=ready&title=Ready)](http://waffle.io/weareinteractive/ansible-php5-newrelic)

> `php5-newrelic` is an [ansible](http://www.ansible.com) role which: 
> 
> * installs newrelic-php
> * configures newrelic-php
> 
> Note: Tests are failing due to invalid license key

## Installation

Using `ansible-galaxy`:

```
$ ansible-galaxy install franklinkim.php5-newrelic
```

Using `arm` ([Ansible Role Manager](https://github.com/mirskytech/ansible-role-manager/)):

```
$ arm install franklinkim.php5-newrelic
```

Using `git`:

```
$ git clone https://github.com/weareinteractive/ansible-php5-newrelic.git
```

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```
# php5_newrelic:
#   - { section: newrelic, option: appname, value: "My App" }
#   - { section: newrelic, option: logfile, value: "/var/log/newrelic/php_agent.log" }
#   - { section: newrelic, option: daemon.logfile, value: "/var/log/newrelic/newrelic-daemon.log" }
#

# ini config settings
php5_newrelic:
  - { section: newrelic, option: logfile, value: "/var/log/newrelic/php_agent.log" }
  - { section: newrelic, option: daemon.logfile, value: "/var/log/newrelic/newrelic-daemon.log" }
```

## Example playbook

```
- hosts: all
  roles:
    - franklinkim.php5-newrelic
  vars:
    newrelic_license_key: ab2fa361cd4d0d373833cad619d7bcc424d27c16
    php5_newrelic:
      - { section: newrelic, option: appname, value: "My App" }
      - { section: newrelic, option: logfile, value: "/var/log/newrelic/php_agent.log" }
      - { section: newrelic, option: daemon.logfile, value: "/var/log/newrelic/newrelic-daemon.log" }
```

## Testing

```
$ git clone https://github.com/weareinteractive/ansible-php5-newrelic.git
$ cd ansible-php5-newrelic
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) We Are Interactive under the MIT license.
