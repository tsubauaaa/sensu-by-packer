#!/bin/bash

export PATH=$PATH:/opt/sensu/embedded/bin/

gem install aws-sdk-v1

chmod -R 755 /etc/sensu/plugins
chmod -R 744 /etc/sensu/conf.d/checks
chown -R sensu:sensu /etc/sensu/plugins
chown -R sensu:sensu /etc/sensu/conf.d/checks
