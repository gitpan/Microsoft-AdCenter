package Microsoft::AdCenter::ReportingService::Test::AdDynamicTextPerformanceReportFilter;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AdDynamicTextPerformanceReportFilter;

sub test_can_create_ad_dynamic_text_performance_report_filter_and_set_all_fields : Test(5) {
    my $ad_dynamic_text_performance_report_filter = Microsoft::AdCenter::ReportingService::AdDynamicTextPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->AdType('ad type')
        ->DeviceType('device type')
        ->LanguageAndRegion('language and region')
    ;

    ok($ad_dynamic_text_performance_report_filter);

    is($ad_dynamic_text_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($ad_dynamic_text_performance_report_filter->AdType, 'ad type', 'can get ad type');
    is($ad_dynamic_text_performance_report_filter->DeviceType, 'device type', 'can get device type');
    is($ad_dynamic_text_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
