package Microsoft::AdCenter::CustomerManagementService::Test::AdCenterSap;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::AdCenterSap;

sub test_can_create_ad_center_sap_and_set_all_fields : Test(2) {
    my $ad_center_sap = Microsoft::AdCenter::CustomerManagementService::AdCenterSap->new
        ->SapId('sap id')
    ;

    ok($ad_center_sap);

    is($ad_center_sap->SapId, 'sap id', 'can get sap id');
};

1;
