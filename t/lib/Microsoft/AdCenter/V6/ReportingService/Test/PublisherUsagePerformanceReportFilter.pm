package Microsoft::AdCenter::V6::ReportingService::Test::PublisherUsagePerformanceReportFilter;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::ReportingService;
use Microsoft::AdCenter::V6::ReportingService::PublisherUsagePerformanceReportFilter;

sub test_can_create_publisher_usage_performance_report_filter_and_set_all_fields : Test(3) {
    my $publisher_usage_performance_report_filter = Microsoft::AdCenter::V6::ReportingService::PublisherUsagePerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->LanguageAndRegion('language and region')
    ;

    ok($publisher_usage_performance_report_filter);

    is($publisher_usage_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($publisher_usage_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
