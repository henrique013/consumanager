<?php
return [
    'settings' => [

        // Slim settings
        'displayErrorDetails' => true,


        'PDO' => [
            'host' => 'localhost',
            'port' => '5432',
            'user' => 'root',
            'password' => '123',
            'dbname' => 'clinica',
        ],


        'JWT' => [
            'secret' => 'supersecret1234',
        ],
    ],
];
