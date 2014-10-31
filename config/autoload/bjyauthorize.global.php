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
                array('controller' => 'PlaygroundCMS\Controller\Front\Page',            'roles' => array('guest', 'user')),
                array('controller' => 'PlaygroundCMS\Controller\Front\ExportBlock',     'roles' => array('guest', 'user')),

                array('controller' => 'PlaygroundPublishing\Controller\Front\Article',  'roles' => array('guest', 'user')),
                array('controller' => 'PlaygroundPublishing\Controller\Front\Tag',      'roles' => array('guest', 'user')),
                array('controller' => 'PlaygroundPublishing\Controller\Front\Category', 'roles' => array('guest', 'user')),
                array('controller' => 'PlaygroundPublishing\Controller\Front\Poll',     'roles' => array('guest', 'user')),


                // Back Area
                array('controller' => 'playgrounduseradmin_login',               'roles' => array('guest', 'admin')),
                array('controller' => 'playgrounduser_user',                     'roles' => array('guest', 'admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Dashboard', 'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Block',     'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Feed',      'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Menu',      'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Page',      'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Layout',    'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Revision',  'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Template',  'roles' => array('admin')),
                array('controller' => 'PlaygroundCMS\Controller\Back\Zone',      'roles' => array('admin')),

                array('controller' => 'PlaygroundPublishing\Controller\Back\Category', 'roles' => array('admin')),
                array('controller' => 'PlaygroundPublishing\Controller\Back\Tag',      'roles' => array('admin')),
                array('controller' => 'PlaygroundPublishing\Controller\Back\Article',  'roles' => array('admin')),
                array('controller' => 'PlaygroundPublishing\Controller\Back\Comment',  'roles' => array('admin')),
                array('controller' => 'PlaygroundPublishing\Controller\Back\Poll',     'roles' => array('admin')),


            ),
        ),
    ),
);