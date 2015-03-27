# Nmap Cookbook

Installs Nmap and add the ability to
[run Nmap as an unprivileged user](https://secwiki.org/w/Running_nmap_as_an_unprivileged_user)
on Linux systems by using capabilities.

## Supported Platforms

* Ubuntu 14.04
* CentOS 7.0

## Attributes

## Usage

### nmap-cookbook::default

Include `nmap-cookbook` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[nmap-cookbook::default]"
  ]
}
```

## License and Authors

Author:: Merouane Atig (merouane.atig@gmail.com)
