#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::NotificationManagementService::Test::UserPasswordResetNotification;

Test::Class->runtests;

