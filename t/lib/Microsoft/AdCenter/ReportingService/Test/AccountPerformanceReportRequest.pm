package Microsoft::AdCenter::ReportingService::Test::AccountPerformanceReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AccountPerformanceReportRequest;

sub test_can_create_account_performance_report_request_and_set_all_fields : Test(6) {
    my $account_performance_report_request = Microsoft::AdCenter::ReportingService::AccountPerformanceReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($account_performance_report_request);

    is($account_performance_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($account_performance_report_request->Columns, 'columns', 'can get columns');
    is($account_performance_report_request->Filter, 'filter', 'can get filter');
    is($account_performance_report_request->Scope, 'scope', 'can get scope');
    is($account_performance_report_request->Time, 'time', 'can get time');
};

1;
