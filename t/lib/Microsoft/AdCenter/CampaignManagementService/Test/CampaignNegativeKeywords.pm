package Microsoft::AdCenter::CampaignManagementService::Test::CampaignNegativeKeywords;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::CampaignNegativeKeywords;

sub test_can_create_campaign_negative_keywords_and_set_all_fields : Test(3) {
    my $campaign_negative_keywords = Microsoft::AdCenter::CampaignManagementService::CampaignNegativeKeywords->new
        ->CampaignId('campaign id')
        ->NegativeKeywords('negative keywords')
    ;

    ok($campaign_negative_keywords);

    is($campaign_negative_keywords->CampaignId, 'campaign id', 'can get campaign id');
    is($campaign_negative_keywords->NegativeKeywords, 'negative keywords', 'can get negative keywords');
};

1;
