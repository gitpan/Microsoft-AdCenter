package Microsoft::AdCenter::ReportingService::Test::AdGroupPerformanceReportFilter;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AdGroupPerformanceReportFilter;

sub test_can_create_ad_group_performance_report_filter_and_set_all_fields : Test(4) {
    my $ad_group_performance_report_filter = Microsoft::AdCenter::ReportingService::AdGroupPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->LanguageAndRegion('language and region')
        ->Status('status')
    ;

    ok($ad_group_performance_report_filter);

    is($ad_group_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($ad_group_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
    is($ad_group_performance_report_filter->Status, 'status', 'can get status');
};

1;
