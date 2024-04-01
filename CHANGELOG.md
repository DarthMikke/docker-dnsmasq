## [v1.2.2] - 2024-04-01

### Changed
- Do not try to overwrite the `/srv/` directory with Git-ed config.


## [v1.2.1] - 2024-01-26

### Fixed
- Disregard Docker's resolv.conf to avoid DNS resolution loops.

### Changed
- Only include .conf files from /srv/dnsmasq.d.


## [v1.2.0] - 2023-12-22

### Added
- Script for running this container as localhost DNS on Mac OS.

### Changed
- Moved additional configuration to /srv/dnsmasq.d, so that the configuration
  can be more flexible.
- Nicer container names.


## [v1.1.0] - 2023-12-05

### Added
- Cloudflare (1.1.1.1) as upstream DNS server
