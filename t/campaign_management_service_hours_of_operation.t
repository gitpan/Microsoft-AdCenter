#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CampaignManagementService::Test::HoursOfOperation;

Test::Class->runtests;

