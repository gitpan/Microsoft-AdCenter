package Microsoft::AdCenter::V7::ReportingService::Test::TrafficSourcesReportRequest;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::ReportingService;
use Microsoft::AdCenter::V7::ReportingService::TrafficSourcesReportRequest;

sub test_can_create_traffic_sources_report_request_and_set_all_fields : Test(6) {
    my $traffic_sources_report_request = Microsoft::AdCenter::V7::ReportingService::TrafficSourcesReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($traffic_sources_report_request);

    is($traffic_sources_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($traffic_sources_report_request->Columns, 'columns', 'can get columns');
    is($traffic_sources_report_request->Filter, 'filter', 'can get filter');
    is($traffic_sources_report_request->Scope, 'scope', 'can get scope');
    is($traffic_sources_report_request->Time, 'time', 'can get time');
};

1;
