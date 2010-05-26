#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::ReportingService::Test::AccountReportScope;

Test::Class->runtests;

