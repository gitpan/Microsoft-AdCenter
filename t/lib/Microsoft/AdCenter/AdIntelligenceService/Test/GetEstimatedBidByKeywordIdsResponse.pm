package Microsoft::AdCenter::AdIntelligenceService::Test::GetEstimatedBidByKeywordIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::GetEstimatedBidByKeywordIdsResponse;

sub test_can_create_get_estimated_bid_by_keyword_ids_response_and_set_all_fields : Test(2) {
    my $get_estimated_bid_by_keyword_ids_response = Microsoft::AdCenter::AdIntelligenceService::GetEstimatedBidByKeywordIdsResponse->new
        ->KeywordEstimatedBids('keyword estimated bids')
    ;

    ok($get_estimated_bid_by_keyword_ids_response);

    is($get_estimated_bid_by_keyword_ids_response->KeywordEstimatedBids, 'keyword estimated bids', 'can get keyword estimated bids');
};

1;
