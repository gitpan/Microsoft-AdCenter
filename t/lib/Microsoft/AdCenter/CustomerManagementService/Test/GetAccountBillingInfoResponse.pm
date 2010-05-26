package Microsoft::AdCenter::CustomerManagementService::Test::GetAccountBillingInfoResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetAccountBillingInfoResponse;

sub test_can_create_get_account_billing_info_response_and_set_all_fields : Test(2) {
    my $get_account_billing_info_response = Microsoft::AdCenter::CustomerManagementService::GetAccountBillingInfoResponse->new
        ->GetAccountBillingInfoResult('get account billing info result')
    ;

    ok($get_account_billing_info_response);

    is($get_account_billing_info_response->GetAccountBillingInfoResult, 'get account billing info result', 'can get get account billing info result');
};

1;
