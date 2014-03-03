<?php
$playgroundgame = array(

		/**
		 * Drive path to the directory where game media files will be stored
		 */
		'media_path' => 'public' . DIRECTORY_SEPARATOR . 'media' . DIRECTORY_SEPARATOR . 'game',

		/**
		 * Url relative path to the directory where game media files will be stored
		 */
		'media_url' => 'media/game',

        /**
         * Sender email address
         */
        'emailFromAddress' => 'no-reply@to.me',
        'participationSubjectLine' => '',
);

/**
 * You do not need to edit below this line
 */
return array(
    'playgroundgame' => $playgroundgame,
);
