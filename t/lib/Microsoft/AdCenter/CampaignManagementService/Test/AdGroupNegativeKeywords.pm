package Microsoft::AdCenter::CampaignManagementService::Test::AdGroupNegativeKeywords;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AdGroupNegativeKeywords;

sub test_can_create_ad_group_negative_keywords_and_set_all_fields : Test(3) {
    my $ad_group_negative_keywords = Microsoft::AdCenter::CampaignManagementService::AdGroupNegativeKeywords->new
        ->AdGroupId('ad group id')
        ->NegativeKeywords('negative keywords')
    ;

    ok($ad_group_negative_keywords);

    is($ad_group_negative_keywords->AdGroupId, 'ad group id', 'can get ad group id');
    is($ad_group_negative_keywords->NegativeKeywords, 'negative keywords', 'can get negative keywords');
};

1;
