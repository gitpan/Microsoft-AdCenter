package Microsoft::AdCenter::ReportingService::Test::OperationError;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::OperationError;

sub test_can_create_operation_error_and_set_all_fields : Test(5) {
    my $operation_error = Microsoft::AdCenter::ReportingService::OperationError->new
        ->Code('code')
        ->Details('details')
        ->ErrorCode('error code')
        ->Message('message')
    ;

    ok($operation_error);

    is($operation_error->Code, 'code', 'can get code');
    is($operation_error->Details, 'details', 'can get details');
    is($operation_error->ErrorCode, 'error code', 'can get error code');
    is($operation_error->Message, 'message', 'can get message');
};

1;
