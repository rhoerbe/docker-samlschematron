#!/bin/bash
#
# Startup script for the saml schematron validation web app

# make static files available for reverse proxy
mkdir -p /export/static
cp -npr /opt/saml_schematron/saml_schtron/webapp/static/* /export/static/

# start webserver
start_srv.py > /var/log/access.log 2> /var/log/error.log
