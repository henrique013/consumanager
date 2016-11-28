<?php
// Environment variable settings


if (in_array(getenv("MY_ENV"), [false, 'development']))
{
    $dotenv = new \Dotenv\Dotenv(dirname(__DIR__));
    $dotenv->overload();
    $dotenv->required('MY_ENV')->allowedValues(['development', 'staging', 'production']);
    $dotenv->required([
        'POSTGRESQL_HOST',
        'POSTGRESQL_USERNAME',
        'POSTGRESQL_PASSWORD',
        'POSTGRESQL_DATABASE',
        'POSTGRESQL_PORT',
        'JWT_SECRET',
    ]);
}
