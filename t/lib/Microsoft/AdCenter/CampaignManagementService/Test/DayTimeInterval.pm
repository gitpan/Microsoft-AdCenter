package Microsoft::AdCenter::CampaignManagementService::Test::DayTimeInterval;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DayTimeInterval;

sub test_can_create_day_time_interval_and_set_all_fields : Test(3) {
    my $day_time_interval = Microsoft::AdCenter::CampaignManagementService::DayTimeInterval->new
        ->Begin('begin')
        ->End('end')
    ;

    ok($day_time_interval);

    is($day_time_interval->Begin, 'begin', 'can get begin');
    is($day_time_interval->End, 'end', 'can get end');
};

1;
