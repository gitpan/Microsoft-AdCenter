#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::ReportingService::Test::ApplicationFault;

Test::Class->runtests;

