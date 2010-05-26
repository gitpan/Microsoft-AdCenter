#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::AdministrationService::Test::AdApiFaultDetail;

Test::Class->runtests;

