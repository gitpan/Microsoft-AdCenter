package Microsoft::AdCenter::AdIntelligenceService::Test::GetPublisherKeywordPerformanceResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::GetPublisherKeywordPerformanceResponse;

sub test_can_create_get_publisher_keyword_performance_response_and_set_all_fields : Test(2) {
    my $get_publisher_keyword_performance_response = Microsoft::AdCenter::AdIntelligenceService::GetPublisherKeywordPerformanceResponse->new
        ->KeywordPerformance('keyword performance')
    ;

    ok($get_publisher_keyword_performance_response);

    is($get_publisher_keyword_performance_response->KeywordPerformance, 'keyword performance', 'can get keyword performance');
};

1;
