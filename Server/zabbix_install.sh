## A script to prepare and install Zabbix network monitoring on OpenBSD

# Install require packages
pkg_add -z zabbix-web zabbix-agent zabbix-server-*-pgsql php-pgsql-7.3* postgresql-server postgresql-client fping

# Enable start at boot for the web server, PHP, Zabbix, and other necessities
rcctl enable httpd saslauthd postgresql php73_fpm zabbix_agentd zabbix_server

