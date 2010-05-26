#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CustomerManagementService::Test::AdCenterCreditCard;

Test::Class->runtests;

