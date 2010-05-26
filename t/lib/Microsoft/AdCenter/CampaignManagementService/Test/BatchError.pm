package Microsoft::AdCenter::CampaignManagementService::Test::BatchError;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::BatchError;

sub test_can_create_batch_error_and_set_all_fields : Test(6) {
    my $batch_error = Microsoft::AdCenter::CampaignManagementService::BatchError->new
        ->Code('code')
        ->Details('details')
        ->ErrorCode('error code')
        ->Index('index')
        ->Message('message')
    ;

    ok($batch_error);

    is($batch_error->Code, 'code', 'can get code');
    is($batch_error->Details, 'details', 'can get details');
    is($batch_error->ErrorCode, 'error code', 'can get error code');
    is($batch_error->Index, 'index', 'can get index');
    is($batch_error->Message, 'message', 'can get message');
};

1;
