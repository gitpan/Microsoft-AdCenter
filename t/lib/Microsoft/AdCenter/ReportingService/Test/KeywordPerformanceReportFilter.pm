package Microsoft::AdCenter::ReportingService::Test::KeywordPerformanceReportFilter;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::KeywordPerformanceReportFilter;

sub test_can_create_keyword_performance_report_filter_and_set_all_fields : Test(8) {
    my $keyword_performance_report_filter = Microsoft::AdCenter::ReportingService::KeywordPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->AdType('ad type')
        ->BiddedMatchType('bidded match type')
        ->Cashback('cashback')
        ->DeliveredMatchType('delivered match type')
        ->Keywords('keywords')
        ->LanguageAndRegion('language and region')
    ;

    ok($keyword_performance_report_filter);

    is($keyword_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($keyword_performance_report_filter->AdType, 'ad type', 'can get ad type');
    is($keyword_performance_report_filter->BiddedMatchType, 'bidded match type', 'can get bidded match type');
    is($keyword_performance_report_filter->Cashback, 'cashback', 'can get cashback');
    is($keyword_performance_report_filter->DeliveredMatchType, 'delivered match type', 'can get delivered match type');
    is($keyword_performance_report_filter->Keywords, 'keywords', 'can get keywords');
    is($keyword_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
