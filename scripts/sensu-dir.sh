#!/bin/bash

chmod -R 755 /etc/sensu/plugins
chmod -R 744 /etc/sensu/conf.d/checks
chown -R root:sensu /etc/sensu/plugins
chown -R root:sensu /etc/sensu/conf.d/checks
