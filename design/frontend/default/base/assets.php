<?php
return array(
    'assetic_configuration' => array(
        'modules' => array(
            'frontend' => array(
                'root_path' => array(
                    __DIR__ . '/../../../../design/frontend/default/base/assets',
                ),
                # collection of assets
                'collections' => array(
                    /**
                     * MAIN CSS FILES
                     */
                    'frontend_css' => array(
                        'assets' => array(
                            'style.css'                      => 'css/style.css',
                        ),
                        'options' => array(
                            'output' => 'frontend/css/base'
                        ),
                    ),
                ),
            ),
        ),
        'routes' => array(
            'frontend.*' => array(
                '@frontend_css',
            ),           
        ),
    ),
);