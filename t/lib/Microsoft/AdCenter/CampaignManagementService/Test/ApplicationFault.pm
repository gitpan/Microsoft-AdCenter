package Microsoft::AdCenter::CampaignManagementService::Test::ApplicationFault;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ApplicationFault;

sub test_can_create_application_fault_and_set_all_fields : Test(2) {
    my $application_fault = Microsoft::AdCenter::CampaignManagementService::ApplicationFault->new
        ->TrackingId('tracking id')
    ;

    ok($application_fault);

    is($application_fault->TrackingId, 'tracking id', 'can get tracking id');
};

1;
