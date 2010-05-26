#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CampaignManagementService::Test::AdGroup;

Test::Class->runtests;

