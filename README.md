# Versioned DNS

This is a containerized DNS server that pulls the configuration from a Git
repository. The container is based on [dnsmasq](https://thekelleys.org.uk/dnsmasq/),
which uses a hosts file for generating DNS records. My use cases for this are:

- Providing memorable URLs for services running in a home VPN.
- Resolving web URLs for local development, such as `*.dev.mydomain.priv`.

## Providing DNS records

There are two ways to provide DNS records:
1. Pass environment variable `GIT_PATH` containing the full path to the
Git repository.
2. Mount a folder containing a file called `hosts` as `/srv` in the container.

## Scripts

There are several lifetime scripts provided in the `scripts` directory:

- `build` - only build the container
- `test` - run the test setup
- `start` - start the container in the background without building
- `stop` - remove the container
- `restart` - `stop`, then `start`

Depending on your Docker setup, you might have to run them as sudo.
