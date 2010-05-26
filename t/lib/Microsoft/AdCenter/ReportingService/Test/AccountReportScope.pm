package Microsoft::AdCenter::ReportingService::Test::AccountReportScope;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AccountReportScope;

sub test_can_create_account_report_scope_and_set_all_fields : Test(2) {
    my $account_report_scope = Microsoft::AdCenter::ReportingService::AccountReportScope->new
        ->AccountIds('account ids')
    ;

    ok($account_report_scope);

    is($account_report_scope->AccountIds, 'account ids', 'can get account ids');
};

1;
