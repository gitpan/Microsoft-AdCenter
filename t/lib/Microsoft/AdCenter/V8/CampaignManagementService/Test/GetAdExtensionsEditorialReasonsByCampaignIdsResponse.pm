package Microsoft::AdCenter::V8::CampaignManagementService::Test::GetAdExtensionsEditorialReasonsByCampaignIdsResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CampaignManagementService;
use Microsoft::AdCenter::V8::CampaignManagementService::GetAdExtensionsEditorialReasonsByCampaignIdsResponse;

sub test_can_create_get_ad_extensions_editorial_reasons_by_campaign_ids_response_and_set_all_fields : Test(2) {
    my $get_ad_extensions_editorial_reasons_by_campaign_ids_response = Microsoft::AdCenter::V8::CampaignManagementService::GetAdExtensionsEditorialReasonsByCampaignIdsResponse->new
        ->EditorialReasons('editorial reasons')
    ;

    ok($get_ad_extensions_editorial_reasons_by_campaign_ids_response);

    is($get_ad_extensions_editorial_reasons_by_campaign_ids_response->EditorialReasons, 'editorial reasons', 'can get editorial reasons');
};

1;
