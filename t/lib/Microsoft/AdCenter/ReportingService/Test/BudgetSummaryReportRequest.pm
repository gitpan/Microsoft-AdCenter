package Microsoft::AdCenter::ReportingService::Test::BudgetSummaryReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::BudgetSummaryReportRequest;

sub test_can_create_budget_summary_report_request_and_set_all_fields : Test(4) {
    my $budget_summary_report_request = Microsoft::AdCenter::ReportingService::BudgetSummaryReportRequest->new
        ->Columns('columns')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($budget_summary_report_request);

    is($budget_summary_report_request->Columns, 'columns', 'can get columns');
    is($budget_summary_report_request->Scope, 'scope', 'can get scope');
    is($budget_summary_report_request->Time, 'time', 'can get time');
};

1;
