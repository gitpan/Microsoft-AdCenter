package Microsoft::AdCenter::AdIntelligenceService::Test::GetHistoricalSearchCountResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::GetHistoricalSearchCountResponse;

sub test_can_create_get_historical_search_count_response_and_set_all_fields : Test(2) {
    my $get_historical_search_count_response = Microsoft::AdCenter::AdIntelligenceService::GetHistoricalSearchCountResponse->new
        ->KeywordSearchCounts('keyword search counts')
    ;

    ok($get_historical_search_count_response);

    is($get_historical_search_count_response->KeywordSearchCounts, 'keyword search counts', 'can get keyword search counts');
};

1;
