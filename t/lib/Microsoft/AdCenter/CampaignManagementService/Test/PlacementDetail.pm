package Microsoft::AdCenter::CampaignManagementService::Test::PlacementDetail;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::PlacementDetail;

sub test_can_create_placement_detail_and_set_all_fields : Test(5) {
    my $placement_detail = Microsoft::AdCenter::CampaignManagementService::PlacementDetail->new
        ->ImpressionsRangePerDay('impressions range per day')
        ->PathName('path name')
        ->PlacementId('placement id')
        ->SupportedMediaTypes('supported media types')
    ;

    ok($placement_detail);

    is($placement_detail->ImpressionsRangePerDay, 'impressions range per day', 'can get impressions range per day');
    is($placement_detail->PathName, 'path name', 'can get path name');
    is($placement_detail->PlacementId, 'placement id', 'can get placement id');
    is($placement_detail->SupportedMediaTypes, 'supported media types', 'can get supported media types');
};

1;
