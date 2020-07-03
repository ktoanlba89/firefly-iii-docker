#!/bin/bash

echo "Now in finalize-image.sh for Firefly III"
echo "Script version is 1.0.0 (2020-06-07)"
echo "Running as $(whoami)."

echo "Making directories..."
mkdir -p $FIREFLY_PATH/storage/app/public
mkdir -p $FIREFLY_PATH/storage/build
mkdir -p $FIREFLY_PATH/storage/database
mkdir -p $FIREFLY_PATH/storage/debugbar
mkdir -p $FIREFLY_PATH/storage/framework/cache/data
mkdir -p $FIREFLY_PATH/storage/framework/sessions
mkdir -p $FIREFLY_PATH/storage/framework/testing
mkdir -p $FIREFLY_PATH/storage/framework/views/twig
mkdir -p $FIREFLY_PATH/storage/framework/views/v1
mkdir -p $FIREFLY_PATH/storage/framework/views/v2
mkdir -p $FIREFLY_PATH/storage/logs

echo "CHOWN..."


chown -R www-data:www-data $FIREFLY_PATH/storage/app/public
chown -R www-data:www-data $FIREFLY_PATH/storage/build
chown -R www-data:www-data $FIREFLY_PATH/storage/database
chown -R www-data:www-data $FIREFLY_PATH/storage/debugbar
chown -R www-data:www-data $FIREFLY_PATH/storage/framework/cache/data
chown -R www-data:www-data $FIREFLY_PATH/storage/framework/sessions
chown -R www-data:www-data $FIREFLY_PATH/storage/framework/testing
chown -R www-data:www-data $FIREFLY_PATH/storage/framework/views/twig
chown -R www-data:www-data $FIREFLY_PATH/storage/framework/views/v1
chown -R www-data:www-data $FIREFLY_PATH/storage/framework/views/v2
chown -R www-data:www-data $FIREFLY_PATH/storage/logs

chmod -R 775 $FIREFLY_PATH/storage/app/public
chmod -R 775 $FIREFLY_PATH/storage/build
chmod -R 775 $FIREFLY_PATH/storage/database
chmod -R 775 $FIREFLY_PATH/storage/debugbar
chmod -R 775 $FIREFLY_PATH/storage/framework/cache/data
chmod -R 775 $FIREFLY_PATH/storage/framework/sessions
chmod -R 775 $FIREFLY_PATH/storage/framework/testing
chmod -R 775 $FIREFLY_PATH/storage/framework/views/twig
chmod -R 775 $FIREFLY_PATH/storage/framework/views/v1
chmod -R 775 $FIREFLY_PATH/storage/framework/views/v2
chmod -R 775 $FIREFLY_PATH/storage/logs

rm -f $FIREFLY_PATH/storage/logs/laravel.log
