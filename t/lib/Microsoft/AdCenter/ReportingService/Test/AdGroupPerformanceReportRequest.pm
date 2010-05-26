package Microsoft::AdCenter::ReportingService::Test::AdGroupPerformanceReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AdGroupPerformanceReportRequest;

sub test_can_create_ad_group_performance_report_request_and_set_all_fields : Test(6) {
    my $ad_group_performance_report_request = Microsoft::AdCenter::ReportingService::AdGroupPerformanceReportRequest->new
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
