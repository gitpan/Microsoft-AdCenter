package Microsoft::AdCenter::V8::CampaignManagementService::Test::GetNegativeKeywordsByCampaignIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CampaignManagementService;
use Microsoft::AdCenter::V8::CampaignManagementService::GetNegativeKeywordsByCampaignIdsResponse;

sub test_can_create_get_negative_keywords_by_campaign_ids_response_and_set_all_fields : Test(2) {
    my $get_negative_keywords_by_campaign_ids_response = Microsoft::AdCenter::V8::CampaignManagementService::GetNegativeKeywordsByCampaignIdsResponse->new
        ->CampaignNegativeKeywords('campaign negative keywords')
    ;

    ok($get_negative_keywords_by_campaign_ids_response);

    is($get_negative_keywords_by_campaign_ids_response->CampaignNegativeKeywords, 'campaign negative keywords', 'can get campaign negative keywords');
};

1;
