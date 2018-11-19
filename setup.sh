#!/bin/bash

if [ "$1" != "" ]
then
  # ALT_PHP_LOCATION = $("$1")

  $1 bin/cake.php migrations migrate -p BaseApp
  $1 bin/cake.php migrations migrate -p CakeDC/Users
  $1 bin/cake.php migrations seed --plugin BaseApp
else
  echo "Please set alternative PHP location"
fi;
