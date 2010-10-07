package Microsoft::AdCenter::ReportingService::Test::ConversionPerformanceReportFilter;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::ConversionPerformanceReportFilter;

sub test_can_create_conversion_performance_report_filter_and_set_all_fields : Test(2) {
    my $conversion_performance_report_filter = Microsoft::AdCenter::ReportingService::ConversionPerformanceReportFilter->new
        ->Keywords('keywords')
    ;

    ok($conversion_performance_report_filter);

    is($conversion_performance_report_filter->Keywords, 'keywords', 'can get keywords');
};

1;
