package Microsoft::AdCenter::CustomerManagementService::Test::ErrorInfo;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::ErrorInfo;

sub test_can_create_error_info_and_set_all_fields : Test(4) {
    my $error_info = Microsoft::AdCenter::CustomerManagementService::ErrorInfo->new
        ->errCode('err code')
        ->errLevel('err level')
        ->errMsg('err msg')
    ;

    ok($error_info);

    is($error_info->errCode, 'err code', 'can get err code');
    is($error_info->errLevel, 'err level', 'can get err level');
    is($error_info->errMsg, 'err msg', 'can get err msg');
};

1;
