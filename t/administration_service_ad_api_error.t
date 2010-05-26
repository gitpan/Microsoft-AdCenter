#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::AdministrationService::Test::AdApiError;

Test::Class->runtests;

