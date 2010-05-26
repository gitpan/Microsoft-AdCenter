package Microsoft::AdCenter::CampaignManagementService::Test::Target;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Target;

sub test_can_create_target_and_set_all_fields : Test(11) {
    my $target = Microsoft::AdCenter::CampaignManagementService::Target->new
        ->Age('age')
        ->Behavior('behavior')
        ->Day('day')
        ->Gender('gender')
        ->Hour('hour')
        ->Id('id')
        ->IsLibraryTarget('is library target')
        ->Location('location')
        ->Name('name')
        ->Segment('segment')
    ;

    ok($target);

    is($target->Age, 'age', 'can get age');
    is($target->Behavior, 'behavior', 'can get behavior');
    is($target->Day, 'day', 'can get day');
    is($target->Gender, 'gender', 'can get gender');
    is($target->Hour, 'hour', 'can get hour');
    is($target->Id, 'id', 'can get id');
    is($target->IsLibraryTarget, 'is library target', 'can get is library target');
    is($target->Location, 'location', 'can get location');
    is($target->Name, 'name', 'can get name');
    is($target->Segment, 'segment', 'can get segment');
};

1;
