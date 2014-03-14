#!/bin/sh
ENV="prod"
if [ $1 ]
then
    ENV="$1"
fi
git pull origin develop
php composer.phar update
php vendor/doctrine/doctrine-module/bin/doctrine-module.php orm:schema-tool:drop --force
php vendor/doctrine/doctrine-module/bin/doctrine-module.php orm:schema-tool:create
php vendor/doctrine/doctrine-module/bin/doctrine-module.php data-fixture:import --append
php vendor/doctrine/doctrine-module/bin/doctrine-module.php orm:schema-tool:update --force
php public/index.php assetic setup
php public/index.php assetic build
chmod -R 777 *