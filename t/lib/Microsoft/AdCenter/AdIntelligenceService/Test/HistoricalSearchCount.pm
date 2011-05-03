package Microsoft::AdCenter::AdIntelligenceService::Test::HistoricalSearchCount;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::HistoricalSearchCount;

sub test_can_create_historical_search_count_and_set_all_fields : Test(3) {
    my $historical_search_count = Microsoft::AdCenter::AdIntelligenceService::HistoricalSearchCount->new
        ->MonthAndYear('month and year')
        ->SearchCount('search count')
    ;

    ok($historical_search_count);

    is($historical_search_count->MonthAndYear, 'month and year', 'can get month and year');
    is($historical_search_count->SearchCount, 'search count', 'can get search count');
};

1;
