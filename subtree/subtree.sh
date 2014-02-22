#!/bin/bash

MY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $MY_DIR/template.sh

# Core

## pyrocms-vm
info "pyrocms-vm | Add remote"
git remote add -f pyrocms-vm git@github.com:LorenzoGarcia/pyrocms-vm.git
info "pyrocms-vm | Add subtree"
git subtree add --prefix vm pyrocms-vm master --squash
info "pyrocms-vm | Fetch"
git fetch pyrocms-vm master
info "pyrocms-vm | Pull subtree"
git subtree pull --prefix vm pyrocms-vm master --squash
info "pyrocms-vm | Push subtree to upstream"
git subtree push --prefix=vm pyrocms-vm master

success

## pyrocms
info "pyrocms | Add remote"
git remote add -f pyrocms git@github.com:pyrocms/pyrocms.git
info "pyrocms | Add subtree"
git subtree add --prefix www/dev/2.2 pyrocms/2.2/develop --squash
info "pyrocms | Fetch"
git fetch pyrocms 2.2/develop
info "pyrocms | Pull subtree"
git subtree pull --prefix www/dev/2.2 pyrocms 2.2/develop --squash
info "pyrocms | Add upstream"
git remote add pyrocms-upstream git@github.com:LorenzoGarcia/pyrocms.git
info "pyrocms | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/ pyrocms-upstream 2.2/develop

success

# Libraries

## pyrocms-streams
info "pyrocms-streams | Add remote"
git remote add -f pyrocms-streams git@github.com:LorenzoGarcia/pyrocms-streams.git
info "pyrocms-streams | Add subtree"
git subtree add --prefix www/dev/2.2/addons/shared_addons/libraries/streams pyrocms-streams master --squash
info "pyrocms-streams | Fetch"
git fetch pyrocms-streams master
info "pyrocms-streams | Pull subtree"
git subtree pull --prefix www/dev/2.2/addons/shared_addons/libraries/streams pyrocms-streams master --squash
info "pyrocms-streams | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/addons/shared_addons/modules/streams pyrocms-streams master

success

# Modules

## pyrocms-database
info "pyrocms | Add remote"
git remote add -f pyrocms-database git@github.com:adamfairholm/PyroDatabase.git
info "pyrocms | Add subtree"
git subtree add --prefix www/dev/2.2/addons/shared_addons/modules/database pyrocms-database master --squash
info "pyrocms | Fetch"
git fetch pyrocms-database master
info "pyrocms | Pull subtree"
git subtree pull --prefix www/dev/2.2/addons/shared_addons/modules/faqfaq pyrocms-database master --squash
info "pyrocms | Add upstream"
git remote add pyrocms-database-upstream git@github.com:LorenzoGarcia/PyroDatabase.git
info "pyrocms | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/addons/shared_addons/modules/faq pyrocms-database-upstream master

success

## pyrocms-faq
info "pyrocms-faq | Add remote"
git remote add -f pyrocms-faq git@github.com:LorenzoGarcia/pyrocms-faq.git
info "pyrocms-faq | Add subtree"
git subtree add --prefix www/dev/2.2/addons/shared_addons/modules/faq pyrocms-faq master --squash
info "pyrocms-faq | Fetch"
git fetch pyrocms-faq master
info "pyrocms-faq | Pull subtree"
git subtree pull --prefix www/dev/2.2/addons/shared_addons/modules/faqfaq pyrocms-faq master --squash
info "pyrocms-faq | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/addons/shared_addons/modules/faq pyrocms-faq master

success

## pyrocms-logs
info "pyrocms-logs | Add remote"
git remote add -f pyrocms-logs git@github.com:LorenzoGarcia/pyrocms-logs.git
info "pyrocms-logs | Add subtree"
git subtree add --prefix www/dev/2.2/addons/shared_addons/modules/logs pyrocms-logs master --squash
info "pyrocms-logs | Fetch"
git fetch pyrocms-logs master
info "pyrocms-logs | Pull subtree"
git subtree pull --prefix www/dev/2.2/addons/shared_addons/modules/logs pyrocms-logs master --squash
info "pyrocms-logs | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/addons/shared_addons/modules/logs pyrocms-logs master

success

## pyrocms-robots
info "pyrocms-robots | Add remote"
git remote add -f pyrocms-robots git@github.com:LorenzoGarcia/pyrocms-robots.git
info "pyrocms-robots | Add subtree"
git subtree add --prefix www/dev/2.2/addons/shared_addons/modules/robots pyrocms-robots master --squash
info "pyrocms-robots | Fetch"
git fetch pyrocms-robots master
info "pyrocms-robots | Pull subtree"
git subtree pull --prefix www/dev/2.2/addons/shared_addons/modules/robots pyrocms-robots master --squash
info "pyrocms-robots | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/addons/shared_addons/modules/robots pyrocms-robots master

success

# Themes

## pyrocms-bootstrap
info "pyrocms-bootstrap | Add remote"
git remote add -f pyrocms-bootstrap git@github.com:LorenzoGarcia/pyrocms-bootstrap.git
info "pyrocms-bootstrap | Add subtree"
git subtree add --prefix www/dev/2.2/addons/shared_addons/themes/bootstrap pyrocms-bootstrap master --squash
info "pyrocms-bootstrap | Fetch"
git fetch pyrocms-bootstrap master
info "pyrocms-bootstrap | Pull subtree"
git subtree pull --prefix www/dev/2.2/addons/shared_addons/themes/bootstrap pyrocms-bootstrap master --squash
info "pyrocms-bootstrap | Push subtree to upstream"
git subtree push --prefix=www/dev/2.2/addons/shared_addons/themes/bootstrap pyrocms-bootstrap master

success
