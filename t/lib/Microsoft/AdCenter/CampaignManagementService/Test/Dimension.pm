package Microsoft::AdCenter::CampaignManagementService::Test::Dimension;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Dimension;

sub test_can_create_dimension_and_set_all_fields : Test(3) {
    my $dimension = Microsoft::AdCenter::CampaignManagementService::Dimension->new
        ->Height('height')
        ->Width('width')
    ;

    ok($dimension);

    is($dimension->Height, 'height', 'can get height');
    is($dimension->Width, 'width', 'can get width');
};

1;
