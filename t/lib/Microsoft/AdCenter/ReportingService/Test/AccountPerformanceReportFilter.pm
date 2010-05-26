package Microsoft::AdCenter::ReportingService::Test::AccountPerformanceReportFilter;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AccountPerformanceReportFilter;

sub test_can_create_account_performance_report_filter_and_set_all_fields : Test(2) {
    my $account_performance_report_filter = Microsoft::AdCenter::ReportingService::AccountPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
    ;

    ok($account_performance_report_filter);

    is($account_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
};

1;
