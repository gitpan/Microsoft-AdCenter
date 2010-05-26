package Microsoft::AdCenter::CampaignManagementService::Test::GetTargetsInfoFromLibraryResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetTargetsInfoFromLibraryResponse;

sub test_can_create_get_targets_info_from_library_response_and_set_all_fields : Test(2) {
    my $get_targets_info_from_library_response = Microsoft::AdCenter::CampaignManagementService::GetTargetsInfoFromLibraryResponse->new
        ->TargetsInfo('targets info')
    ;

    ok($get_targets_info_from_library_response);

    is($get_targets_info_from_library_response->TargetsInfo, 'targets info', 'can get targets info');
};

1;
