#!perl -T

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CampaignManagementService::Test::KeywordQuality;

Test::Class->runtests;

