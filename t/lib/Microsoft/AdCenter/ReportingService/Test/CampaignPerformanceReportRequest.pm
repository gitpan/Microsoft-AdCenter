package Microsoft::AdCenter::ReportingService::Test::CampaignPerformanceReportRequest;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::CampaignPerformanceReportRequest;

sub test_can_create_campaign_performance_report_request_and_set_all_fields : Test(6) {
    my $campaign_performance_report_request = Microsoft::AdCenter::ReportingService::CampaignPerformanceReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($campaign_performance_report_request);

    is($campaign_performance_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($campaign_performance_report_request->Columns, 'columns', 'can get columns');
    is($campaign_performance_report_request->Filter, 'filter', 'can get filter');
    is($campaign_performance_report_request->Scope, 'scope', 'can get scope');
    is($campaign_performance_report_request->Time, 'time', 'can get time');
};

1;
