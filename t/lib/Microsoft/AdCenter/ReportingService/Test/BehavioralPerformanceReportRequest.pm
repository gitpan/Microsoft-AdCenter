package Microsoft::AdCenter::ReportingService::Test::BehavioralPerformanceReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::BehavioralPerformanceReportRequest;

sub test_can_create_behavioral_performance_report_request_and_set_all_fields : Test(6) {
    my $behavioral_performance_report_request = Microsoft::AdCenter::ReportingService::BehavioralPerformanceReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($behavioral_performance_report_request);

    is($behavioral_performance_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($behavioral_performance_report_request->Columns, 'columns', 'can get columns');
    is($behavioral_performance_report_request->Filter, 'filter', 'can get filter');
    is($behavioral_performance_report_request->Scope, 'scope', 'can get scope');
    is($behavioral_performance_report_request->Time, 'time', 'can get time');
};

1;
