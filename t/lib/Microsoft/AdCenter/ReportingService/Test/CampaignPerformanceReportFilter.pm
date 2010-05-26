package Microsoft::AdCenter::ReportingService::Test::CampaignPerformanceReportFilter;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::CampaignPerformanceReportFilter;

sub test_can_create_campaign_performance_report_filter_and_set_all_fields : Test(3) {
    my $campaign_performance_report_filter = Microsoft::AdCenter::ReportingService::CampaignPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->Status('status')
    ;

    ok($campaign_performance_report_filter);

    is($campaign_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($campaign_performance_report_filter->Status, 'status', 'can get status');
};

1;
