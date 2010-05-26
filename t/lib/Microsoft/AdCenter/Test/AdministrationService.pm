package Microsoft::AdCenter::Test::AdministrationService;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdministrationService;

sub test_can_create_administration_service_and_set_all_fields : Test(9) {
    my $administration_service = Microsoft::AdCenter::AdministrationService->new
        ->EndPoint('somewhere')
        ->ApplicationToken('application token')
        ->CustomerAccountId('customer account id')
        ->CustomerId('customer id')
        ->DeveloperToken('developer token')
        ->Password('password')
        ->UserName('user name')
        ->TrackingId('tracking id')
    ;

    ok($administration_service);

    is($administration_service->EndPoint, 'somewhere', 'can get end point');
    is($administration_service->ApplicationToken, 'application token', 'can get application token');
    is($administration_service->CustomerAccountId, 'customer account id', 'can get customer account id');
    is($administration_service->CustomerId, 'customer id', 'can get customer id');
    is($administration_service->DeveloperToken, 'developer token', 'can get developer token');
    is($administration_service->Password, 'password', 'can get password');
    is($administration_service->UserName, 'user name', 'can get user name');
    is($administration_service->TrackingId, 'tracking id', 'can get tracking id');
};

1;
