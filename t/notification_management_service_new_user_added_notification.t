#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::NotificationManagementService::Test::NewUserAddedNotification;

Test::Class->runtests;

