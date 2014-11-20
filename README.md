# PG #

Ce projet est le theme de demo de PlaygroundCMS.
La documentation sur PlaygroundCMS se trouve [ici](https://github.com/thomaroger/PGCMS/blob/develop/doc/index.md).


## Installation ##

### GitHub ###
    
    git clone https://github.com/thomaroger/PG.git pgcms
    cd pgcms

### Mise en place ###
    
    php composer.phar install
    
### Virtualhost ###
    
    <VirtualHost *:80>
        ServerName dev.pgcms.fr
        ServerAlias pgcms.local
        DocumentRoot <pathtopgcmspublic>
        SetEnv APPLICATION_ENV "development"
        <Directory <pathtopgcmspublic>>
            DirectoryIndex index.php
            Options Indexes FollowSymLinks Includes ExecCGI
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
    </VirtualHost>

### Htaccess ###

Il faut créer un htaccess dans le dossier public

    touch public/.htaccess

et mettre le contenu suivant dans le htaccess

    RewriteEngine On
    RewriteBase /
    
    RedirectMatch permanent ^/$ /fr_fr/index-1.html
    
    RewriteCond %{REQUEST_FILENAME} -s [OR]
    RewriteCond %{REQUEST_FILENAME} -l [OR]
    RewriteCond %{REQUEST_FILENAME} -d
    RewriteRule ^.*$ - [NC,L]
    RewriteRule ^.*$ index.php [NC,L] 


### Base de données ###

Vous pouvez configurer l'accès à votre base de données dans le dossier config/autoload
    
    cp config/autoload/local.php.dist config/autoload/local.php

Le fichier local.php permet de configurer l'accès à la base

    $dbParams = array(
        'database'  => '<nomdelabase>',
        'username'  => '<utilisateur>',
        'password'  => '<motdepasse>',
        'hostname'  => '<host>',
        'port'      => '<port>',
        'charset'   => 'utf8',
        'driverOptions' => array(
            1002 => 'SET NAMES utf8',
        ),
    );


Vous avez une base de démo dans le fichier pgcms.sql
    
    mysql <nomdelabase> < pgcms.sql


## Dépendances ##

### Dépendances requises ###

    "php" : ">=5.3.3",
    "zendframework/zendframework" : "2.*",
    "playground/core" : "2.*",
    "playground/user" : "2.*",
    "playground/design" : "2.*",
    "playground/cms2" : "dev-develop",
    "playground/publishing" : "dev-develop",
    "playground/hybridauth" : "dev-master",
    "doctrine/doctrine-orm-module" : "0.8.*@dev",
    "doctrine/doctrine-module" : "0.8.*@dev",
    "bjyoungblood/bjy-authorize" : "1.1.*",
    "doctrine/data-fixtures" : "dev-master",
    "zendframework/zend-developer-tools" : "dev-master",
    "ocramius/ocra-cached-view-resolver" : "1.0.*",
    "hounddog/doctrine-data-fixture-module" : "0.*",
    "jhuet/zdt-logger-module" : "0.*"

### Dépendances requises en mode dev ###

    "phpunit/phpunit" : "3.7.*",
    "satooshi/php-coveralls" : "dev-master"