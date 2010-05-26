#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CampaignManagementService::Test::Target;

Test::Class->runtests;

