package Microsoft::AdCenter::CustomerManagementService::Test::OperationResult;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::OperationResult;

sub test_can_create_operation_result_and_set_all_fields : Test(3) {
    my $operation_result = Microsoft::AdCenter::CustomerManagementService::OperationResult->new
        ->opErrors('op errors')
        ->opStatus('op status')
    ;

    ok($operation_result);

    is($operation_result->opErrors, 'op errors', 'can get op errors');
    is($operation_result->opStatus, 'op status', 'can get op status');
};

1;
