package Microsoft::AdCenter::ReportingService::Test::Date;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::Date;

sub test_can_create_date_and_set_all_fields : Test(4) {
    my $date = Microsoft::AdCenter::ReportingService::Date->new
        ->Day('day')
        ->Month('month')
        ->Year('year')
    ;

    ok($date);

    is($date->Day, 'day', 'can get day');
    is($date->Month, 'month', 'can get month');
    is($date->Year, 'year', 'can get year');
};

1;
