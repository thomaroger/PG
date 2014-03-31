<?php

return array(
    'bjyauthorize' => array(

        'default_role' => 'guest',
        'identity_provider' => 'BjyAuthorize\Provider\Identity\AuthenticationDoctrineEntity',
        //'unauthorized_strategy' => 'PlaygroundUser\View\Strategy\UnauthorizedStrategy',
        'role_providers' => array(
            'BjyAuthorize\Provider\Role\Config' => array(
                'guest' => array(),
                'user'  => array('children' => array(
                    'admin' => array(),
                )),
            ),

            'BjyAuthorize\Provider\Role\DoctrineEntity' => array(
                'role_entity_class' => 'PlaygroundUser\Entity\Role',
            ),
        ),

        'resource_providers' => array(
            'BjyAuthorize\Provider\Resource\Config' => array(
                'core'          => array(),
                'cms'           => array(),
                'design'        => array(),
            ),
        ),

        'rule_providers' => array(
            'BjyAuthorize\Provider\Rule\Config' => array(
                'allow' => array(
                    array(array('admin'), 'cms',            array('list','add','edit','delete')),
                    array(array('admin'), 'core',           array('dashboard', 'edit')),
                    array(array('admin'), 'design',         array('system')),
                ),
            ),
        ),

        'guards' => array(
            'BjyAuthorize\Guard\Controller' => array(

                //Front Area
                array('controller' => 'PlaygroundCMS\Controller\Front\Page',     'roles' => array('guest', 'user')),

                // Back Area
                array('controller' => 'playgrounduseradmin_login',               'roles' => array('guest', 'admin')),
                array('controller' => 'playgrounduser_user',                     'roles' => array('guest', 'admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Dashboard', 'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Page',      'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Layout',    'roles' => array('admin')),
            ),
        ),
    ),
);