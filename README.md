# Single node KEA DHCPv4 server + STORK Web frontend + PostgreSQL backend installation

## Software

- KEA

> \# dpkg -l | grep kea<br/>
> ii  kea                                            2.4.1-3build3                            all          DHCP server [meta]<br/>
> ii  kea-admin                                      2.4.1-3build3                            amd64        Administration utilities for Kea DHCP server<br/>
> ii  kea-common                                     2.4.1-3build3                            amd64        Common libraries for the Kea DHCP server<br/>
> ii  kea-ctrl-agent                                 2.4.1-3build3                            amd64        REST API service for Kea DHCP server<br/>
> ii  kea-dhcp-ddns-server                           2.4.1-3build3                            amd64        DHCP Dynamic DNS service<br/>
> ii  kea-dhcp4-server                               2.4.1-3build3                            amd64        IPv4 DHCP server<br/>
> ii  kea-dhcp6-server                               2.4.1-3build3                            amd64        IPv6 DHCP server<br/>
> ii  python3-kea-connector                          2.4.1-3build3                            all          Python3 management connector for Kea DHCP server<br/>

- STORK

> \# dpkg -l | grep stork<br/>
> ii  isc-stork-agent                                1.16.0.240405082622                      amd64        ISC Stork Agent<br/>
> ii  isc-stork-server                               1.16.0.240405082626                      amd64        ISC Stork Server

> \# apt show isc-stork-agent<br/>
> Package: isc-stork-agent<br/>
> Version: 1.16.0.240405082622<br/>
> Priority: optional<br/>
> Section: default<br/>
> Maintainer: <@runner-4ylmhpa7-project-87-concurrent-0><br/>
> Installed-Size: 25.0 MB<br/>
> Homepage: https://gitlab.isc.org/isc-projects/stork/<br/>
> License: MPL 2.0<br/>
> Vendor: Internet Systems Consortium, Inc.<br/>
> Download-Size: 12.0 MB<br/>
> APT-Manual-Installed: yes<br/>
> APT-Sources: https://dl.cloudsmith.io/public/isc/stork/deb/ubuntu noble/main amd64 Packages<br/>
> Description: ISC Stork Agent

- PostgreSQL

> \# dpkg -l | grep postgre<br/>
> ii  postgresql                                     16+257build1                             all          object-relational SQL database (supported version)<br/>
> ii  postgresql-16                                  16.2-1ubuntu4                            amd64        The World's Most Advanced Open Source Relational Database<br/>
> ii  postgresql-client-16                           16.2-1ubuntu4                            amd64        front-end programs for PostgreSQL 16<br/>
> ii  postgresql-client-common                       257build1                                all          manager for multiple PostgreSQL client versions<br/>
> ii  postgresql-common                              257build1                                all          PostgreSQL database-cluster manager<br/>

# References

## KEA

https://kea.readthedocs.io/en/latest/arm/install.html
https://kea.readthedocs.io/en/latest/arm/admin.html#postgresql


## Stork

https://stork.readthedocs.io/en/latest/install.html
