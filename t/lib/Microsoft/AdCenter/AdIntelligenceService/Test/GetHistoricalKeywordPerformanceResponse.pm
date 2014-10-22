package Microsoft::AdCenter::AdIntelligenceService::Test::GetHistoricalKeywordPerformanceResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::GetHistoricalKeywordPerformanceResponse;

sub test_can_create_get_historical_keyword_performance_response_and_set_all_fields : Test(2) {
    my $get_historical_keyword_performance_response = Microsoft::AdCenter::AdIntelligenceService::GetHistoricalKeywordPerformanceResponse->new
        ->KeywordHistoricalPerformances('keyword historical performances')
    ;

    ok($get_historical_keyword_performance_response);

    is($get_historical_keyword_performance_response->KeywordHistoricalPerformances, 'keyword historical performances', 'can get keyword historical performances');
};

1;
