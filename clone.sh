#!/bin/sh

echo "Cloning repositories..."

PROJECTS=$HOME/projects

# CXE Web
git clone git@scm.starbucks.com:starbucks-web/core.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/pattern-library.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/graphql.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/static.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/gql-app-service.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/cloud-provisioning.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/ops-guide.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/universal-object.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/openapi-mock.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/babel-plugin-remove-intl-props.git $PROJECTS/cxe
git clone git@scm.starbucks.com:starbucks-web/eslint-config-starbucks.git $PROJECTS/cxe

# GDP Platform
git clone git@scm.starbucks.com:gdp-platform/ansible-web.git $PROJECTS/gdp-platform
