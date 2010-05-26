package Microsoft::AdCenter::CampaignManagementService::Test::TextAd;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::TextAd;

sub test_can_create_text_ad_and_set_all_fields : Test(5) {
    my $text_ad = Microsoft::AdCenter::CampaignManagementService::TextAd->new
        ->DestinationUrl('destination url')
        ->DisplayUrl('display url')
        ->Text('text')
        ->Title('title')
    ;

    ok($text_ad);

    is($text_ad->DestinationUrl, 'destination url', 'can get destination url');
    is($text_ad->DisplayUrl, 'display url', 'can get display url');
    is($text_ad->Text, 'text', 'can get text');
    is($text_ad->Title, 'title', 'can get title');
};

1;
