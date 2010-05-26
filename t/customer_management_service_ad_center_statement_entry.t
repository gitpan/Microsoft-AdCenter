#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CustomerManagementService::Test::AdCenterStatementEntry;

Test::Class->runtests;

