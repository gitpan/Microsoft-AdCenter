package Microsoft::AdCenter::ReportingService::Test::AdGroupReportScope;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AdGroupReportScope;

sub test_can_create_ad_group_report_scope_and_set_all_fields : Test(4) {
    my $ad_group_report_scope = Microsoft::AdCenter::ReportingService::AdGroupReportScope->new
        ->AdGroupId('ad group id')
        ->ParentAccountId('parent account id')
        ->ParentCampaignId('parent campaign id')
    ;

    ok($ad_group_report_scope);

    is($ad_group_report_scope->AdGroupId, 'ad group id', 'can get ad group id');
    is($ad_group_report_scope->ParentAccountId, 'parent account id', 'can get parent account id');
    is($ad_group_report_scope->ParentCampaignId, 'parent campaign id', 'can get parent campaign id');
};

1;
