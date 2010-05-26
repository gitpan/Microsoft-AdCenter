package Microsoft::AdCenter::ReportingService::Test::KeywordPerformanceReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::KeywordPerformanceReportRequest;

sub test_can_create_keyword_performance_report_request_and_set_all_fields : Test(6) {
    my $keyword_performance_report_request = Microsoft::AdCenter::ReportingService::KeywordPerformanceReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($keyword_performance_report_request);

    is($keyword_performance_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($keyword_performance_report_request->Columns, 'columns', 'can get columns');
    is($keyword_performance_report_request->Filter, 'filter', 'can get filter');
    is($keyword_performance_report_request->Scope, 'scope', 'can get scope');
    is($keyword_performance_report_request->Time, 'time', 'can get time');
};

1;
