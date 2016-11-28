<?php
return [
    'settings' => [

        // Slim settings
        'displayErrorDetails' => getenv('MY_ENV') !== 'production' ? true : false,


        'PDO' => [
            'host' => getenv("POSTGRESQL_HOST"),
            'port' => getenv("POSTGRESQL_PORT"),
            'user' => getenv("POSTGRESQL_USERNAME"),
            'password' => getenv("POSTGRESQL_PASSWORD"),
            'dbname' => getenv("POSTGRESQL_DATABASE"),
        ],


        'JWT' => [
            'secret' => getenv("JWT_SECRET"),
        ],
    ],
];
