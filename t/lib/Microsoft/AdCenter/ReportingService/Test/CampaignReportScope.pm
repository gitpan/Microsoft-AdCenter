package Microsoft::AdCenter::ReportingService::Test::CampaignReportScope;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::CampaignReportScope;

sub test_can_create_campaign_report_scope_and_set_all_fields : Test(3) {
    my $campaign_report_scope = Microsoft::AdCenter::ReportingService::CampaignReportScope->new
        ->CampaignId('campaign id')
        ->ParentAccountId('parent account id')
    ;

    ok($campaign_report_scope);

    is($campaign_report_scope->CampaignId, 'campaign id', 'can get campaign id');
    is($campaign_report_scope->ParentAccountId, 'parent account id', 'can get parent account id');
};

1;
