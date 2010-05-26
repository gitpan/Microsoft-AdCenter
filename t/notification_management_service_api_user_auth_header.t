#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::NotificationManagementService::Test::ApiUserAuthHeader;

Test::Class->runtests;

