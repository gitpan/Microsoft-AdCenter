package Microsoft::AdCenter::V8::ReportingService::Test::AdGroupPerformanceReportRequest;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::ReportingService;
use Microsoft::AdCenter::V8::ReportingService::AdGroupPerformanceReportRequest;

sub test_can_create_ad_group_performance_report_request_and_set_all_fields : Test(6) {
    my $ad_group_performance_report_request = Microsoft::AdCenter::V8::ReportingService::AdGroupPerformanceReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($ad_group_performance_report_request);

    is($ad_group_performance_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($ad_group_performance_report_request->Columns, 'columns', 'can get columns');
    is($ad_group_performance_report_request->Filter, 'filter', 'can get filter');
    is($ad_group_performance_report_request->Scope, 'scope', 'can get scope');
    is($ad_group_performance_report_request->Time, 'time', 'can get time');
};

1;
