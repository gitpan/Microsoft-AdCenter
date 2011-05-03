package Microsoft::AdCenter::CampaignManagementService::Test::ResumeBehavioralBidsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ResumeBehavioralBidsResponse;

sub test_can_create_resume_behavioral_bids_response_and_set_all_fields : Test(1) {
    my $resume_behavioral_bids_response = Microsoft::AdCenter::CampaignManagementService::ResumeBehavioralBidsResponse->new
    ;

    ok($resume_behavioral_bids_response);

};

1;
