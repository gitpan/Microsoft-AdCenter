package Microsoft::AdCenter::CampaignManagementService::Test::TimeOfTheDay;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::TimeOfTheDay;

sub test_can_create_time_of_the_day_and_set_all_fields : Test(3) {
    my $time_of_the_day = Microsoft::AdCenter::CampaignManagementService::TimeOfTheDay->new
        ->Hour('hour')
        ->Minute('minute')
    ;

    ok($time_of_the_day);

    is($time_of_the_day->Hour, 'hour', 'can get hour');
    is($time_of_the_day->Minute, 'minute', 'can get minute');
};

1;
