<?php
return [
    'settings' => [

        // Slim settings
        'displayErrorDetails' => true,


        'PDO' => [
            'host' => 'localhost',
            'port' => '5432',
            'user' => 'postgres',
            'password' => 'postgres',
            'dbname' => 'consumanager',
        ],


        'JWT' => [
            'secret' => 'supersecret1234',
        ],
    ],
];
