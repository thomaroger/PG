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
                'game'          => array(),
                'user'          => array(),
                'core'          => array(),
                'reward'        => array(),
                'partner'       => array(),
                'cms'           => array(),
                'faq'           => array(),
                'facebook'      => array(),
                'application'   => array(),
                'flow'          => array(),
                'stats'         => array(),
                'design'        => array(),
                'translate'     => array(),
                'weather'       => array(),
                'emailcampaign' => array(),
            ),
        ),

        'rule_providers' => array(
            'BjyAuthorize\Provider\Rule\Config' => array(
                'allow' => array(
                    array(array('admin'), 'game',           array('list','add','edit','delete')),
                    array(array('admin'), 'game',           array('prizecategory_list','prizecategory_add','prizecategory_edit','prizecategory_delete')),
                    array(array('admin'), 'user',           array('list','add','edit','delete')),
                    array(array('admin'), 'reward',         array('list','add','edit','delete')),
                    array(array('admin'), 'partner',        array('list','add','edit','delete')),
                    array(array('admin'), 'cms',            array('list','add','edit','delete')),
                    array(array('admin'), 'faq',            array('list','add','edit','delete')),
                    array(array('admin'), 'facebook',       array('list','add','edit','delete')),
                    array(array('admin'), 'core',           array('dashboard', 'edit')),
                    array(array('admin'), 'application',    array('list')),
                    array(array('admin'), 'flow',           array('list','add','edit','delete')),
                    array(array('admin'), 'stats',          array('list')),
                    array(array('admin'), 'design',         array('system')),
                    array(array('admin'), 'translate',      array('list')),
                    array(array('admin'), 'weather',        array('list')),
                    array(array('admin'), 'emailcampaign',  array('list')),
                ),
            ),
        ),

        'guards' => array(
            'BjyAuthorize\Guard\Controller' => array(
                //Front Area
                array('controller' => 'PlaygroundCMS\Controller\Front\Page',           'roles' => array('guest', 'user')),
            ),
        ),
    ),
);