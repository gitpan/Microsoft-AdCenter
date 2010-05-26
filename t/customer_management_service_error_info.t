#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CustomerManagementService::Test::ErrorInfo;

Test::Class->runtests;

