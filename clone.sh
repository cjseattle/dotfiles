#!/bin/sh

# Keep a listing of all the repos you work in reguarly, and let a single script clone them all for you.

echo "Cloning repositories..."

# If you want a different folder name or location to house your projects, change it below!
PROJECTS=$HOME/projects

# CXE Web
git clone git@scm.starbucks.com:starbucks-web/core.git $PROJECTS/cxe/core
git clone git@scm.starbucks.com:starbucks-web/pattern-library.git $PROJECTS/cxe/pattern-library
git clone git@scm.starbucks.com:starbucks-web/graphql.git $PROJECTS/cxe/graphql
git clone git@scm.starbucks.com:starbucks-web/static.git $PROJECTS/cxe/cwa
git clone git@scm.starbucks.com:starbucks-web/gql-app-service.git $PROJECTS/cxe/gql-app-service
git clone git@scm.starbucks.com:starbucks-web/cloud-provisioning.git $PROJECTS/cxe/cloud-provisioning
git clone git@scm.starbucks.com:starbucks-web/ops-guide.git $PROJECTS/cxe/ops-guide
git clone git@scm.starbucks.com:starbucks-web/universal-object.git $PROJECTS/cxe/universal-object
git clone git@scm.starbucks.com:starbucks-web/openapi-mock.git $PROJECTS/cxe/openapi-mock
git clone git@scm.starbucks.com:starbucks-web/babel-plugin-remove-intl-props.git $PROJECTS/cxe/babel-plugin
git clone git@scm.starbucks.com:starbucks-web/eslint-config-starbucks.git $PROJECTS/cxe/eslint-config-starbucks

# GDP Platform
git clone git@scm.starbucks.com:gdp-platform/ansible-web.git $PROJECTS/gdp-platform/ansible-web
