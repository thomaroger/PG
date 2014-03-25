<?php
$playgrounduser = array(
		
		/**
		 * add default registration role to BjyAuthorize
		 *
		 */
		'default_register_role' => 'user',
		
		/**
		 * Email Address that will appear in the 'From' of outbound emails
		 *
		 * Default: empty
		 */		
		'email_from_address' => array(
			'email' => 'contact@playground.gg',
			'name' => 'Administrateur',
		),
		
		/**
		 * Subject line of the email message which is
		 * sent out when a user enters their email address
		 *
		 * Default: 'You requested to reset your password'
		 */
		'reset_email_subject_line' => 'Réinitialisation de votre mot de passe',
		
		/**
		 * Subject line of the email message which is
		 * sent out when an admin has changed the password
		 * in the admin interface
		 *
		 * Default: 'Your new password'
		 */
		'new_email_subject_line' => 'Votre nouveau mot de passe',
        
        /**
         * Activate the email verification on registration
         *
         * Default: 'Vérification de votre compte'
         */
        'emailVerification' => false,
        
        /**
         * Subject line of the email message which is
         * sent out when verification on email registration
         * is activated
         * 
         * Default: 'Vérification de votre compte'
         */
        'verificationEmailSubjectLine' => 'Vérification de votre compte',
		
		/**
		 * RememberMe Model Entity Class
		 *
		 * Name of Entity class to use. Useful for using your own entity class
		 * instead of the default one provided. Default is ZfcUser\Entity\User.
		 */
		//'remember_me_entity_class' => 'PlaygroundUser\Entity\RememberMe',
		
		/**
		 * Remember me cookie expire time
		 *
		 * How long will the user be remembered for, in seconds?
		 *
		 * Default value: 2592000 seconds = 30 days
		 * Accepted values: the number of seconds the user should be remembered
		 */
		//'cookie_expire' => 2592000,
		
		/**
		 * Drive path to the directory where user avatar will be stored
		 */
		'avatar_path' => 'public' . DIRECTORY_SEPARATOR . 'media' . DIRECTORY_SEPARATOR . 'user',
		
		/**
		 * Url relative path to the directory where user avatar will be stored
		 */
		'avatar_url' => 'media/user',
    
        /**
         * For social authentication, do I propose the social data as input on the registration
         * or do I create automatically an account ?
         * 
         * If false (default), I use the social (Facebook / Twitter ...) data of the user to fill in
         * the registration form
         * 
         * If true, I create automatically the account without password.
         */
        
        'create_user_auto_social' => true,
        
        'social' => array(
            'providers' => include __DIR__.'/social.config.php',
            // if you want to enable logging, set 'debug_mode' to true  then provide a writable file by the web server on 'debug_file'
            'debug_mode' => false,
            'debug_file' => '',
            'config_file' => __DIR__.'/social.config.php',
        ),

        
        'admin' => array(
            // login route
            'route_login' => 'admin',
            // resource associated to admin access
            'resource' => 'core',
            // privilege associated to admin access
            'privilege'   => 'dashboard',
            // controller & action if auth success
            'controller' => 'PlaygroundCMS\Controller\Back\Dashboard',
            'action' => 'index',
            // route if auth fail
            'route_login_fail' => 'admin'
        ),
        

        'anonymous_tracking' => false,
);

/**
 * ZfcUser Configuration
 *
 * If you have a ./config/autoload/ directory set up for your project, you can
 * drop this config file in it and change the values as you wish.
 */
$zfcSettings = array(

    /**
     * Authentication Adapters
     *
     * Specify the adapters that will be used to try and authenticate the user
     *
     * Default value: array containing 'ZfcUser\Authentication\Adapter\Db'
     * Accepted values: array containing services that implement 'ZfcUser\Authentication\Adapter\ChainableAdapter'
     */
    'auth_adapters' => array(
    	50 => 'PlaygroundUser\Authentication\Adapter\Cookie',
    	100 => 'ZfcUser\Authentication\Adapter\Db'
     ),

    /**
     * End of ZfcUser configuration
     */
);

/**
 * You do not need to edit below this line
 */
return array(
    'playgrounduser' => $playgrounduser,
    'zfcuser' => $zfcSettings,
);
