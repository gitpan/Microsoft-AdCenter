package Microsoft::AdCenter::CampaignManagementService::Test::Segment;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Segment;

sub test_can_create_segment_and_set_all_fields : Test(3) {
    my $segment = Microsoft::AdCenter::CampaignManagementService::Segment->new
        ->Id('id')
        ->Name('name')
    ;

    ok($segment);

    is($segment->Id, 'id', 'can get id');
    is($segment->Name, 'name', 'can get name');
};

1;
