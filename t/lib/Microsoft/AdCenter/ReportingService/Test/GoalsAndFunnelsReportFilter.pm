package Microsoft::AdCenter::ReportingService::Test::GoalsAndFunnelsReportFilter;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::GoalsAndFunnelsReportFilter;

sub test_can_create_goals_and_funnels_report_filter_and_set_all_fields : Test(2) {
    my $goals_and_funnels_report_filter = Microsoft::AdCenter::ReportingService::GoalsAndFunnelsReportFilter->new
        ->GoalIds('goal ids')
    ;

    ok($goals_and_funnels_report_filter);

    is($goals_and_funnels_report_filter->GoalIds, 'goal ids', 'can get goal ids');
};

1;
