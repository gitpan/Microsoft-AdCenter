#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::NotificationManagementService::Test::CreditCardExpiredNotification;

Test::Class->runtests;

