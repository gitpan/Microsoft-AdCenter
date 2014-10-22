package Microsoft::AdCenter::V8::CampaignManagementService::Test::SubmitAdGroupForApprovalResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CampaignManagementService;
use Microsoft::AdCenter::V8::CampaignManagementService::SubmitAdGroupForApprovalResponse;

sub test_can_create_submit_ad_group_for_approval_response_and_set_all_fields : Test(1) {
    my $submit_ad_group_for_approval_response = Microsoft::AdCenter::V8::CampaignManagementService::SubmitAdGroupForApprovalResponse->new
    ;

    ok($submit_ad_group_for_approval_response);

};

1;
