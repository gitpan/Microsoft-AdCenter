package Microsoft::AdCenter::CampaignManagementService::Test::MediaType;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::MediaType;

sub test_can_create_media_type_and_set_all_fields : Test(3) {
    my $media_type = Microsoft::AdCenter::CampaignManagementService::MediaType->new
        ->Dimensions('dimensions')
        ->Name('name')
    ;

    ok($media_type);

    is($media_type->Dimensions, 'dimensions', 'can get dimensions');
    is($media_type->Name, 'name', 'can get name');
};

1;
