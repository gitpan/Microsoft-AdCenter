#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CampaignManagementService::Test::CampaignNegativeKeywords;

Test::Class->runtests;

