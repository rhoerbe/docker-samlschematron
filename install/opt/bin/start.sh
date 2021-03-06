#!/bin/bash
#
# Startup script for the saml schematron validation web app

# make static files available for reverse proxy
# mkdir -p /export/static
# cp -npr /opt/source/saml_schematron/saml_schtron/webapp/static/* /var/www/static/

# start webserver
source /opt/source/saml_schematron/scripts/init.sh
start_srv.py > /var/log/access.log 2> /var/log/error.log
