package Microsoft::AdCenter::CampaignManagementService::Test::ResumeCampaignsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ResumeCampaignsResponse;

sub test_can_create_resume_campaigns_response_and_set_all_fields : Test(1) {
    my $resume_campaigns_response = Microsoft::AdCenter::CampaignManagementService::ResumeCampaignsResponse->new
    ;

    ok($resume_campaigns_response);

};

1;
