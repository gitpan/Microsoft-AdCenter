package Microsoft::AdCenter::ReportingService::Test::SegmentationReportRequest;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::SegmentationReportRequest;

sub test_can_create_segmentation_report_request_and_set_all_fields : Test(6) {
    my $segmentation_report_request = Microsoft::AdCenter::ReportingService::SegmentationReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($segmentation_report_request);

    is($segmentation_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($segmentation_report_request->Columns, 'columns', 'can get columns');
    is($segmentation_report_request->Filter, 'filter', 'can get filter');
    is($segmentation_report_request->Scope, 'scope', 'can get scope');
    is($segmentation_report_request->Time, 'time', 'can get time');
};

1;