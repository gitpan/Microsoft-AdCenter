package Microsoft::AdCenter::CustomerManagementService::Test::GetAccountsByIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetAccountsByIdsResponse;

sub test_can_create_get_accounts_by_ids_response_and_set_all_fields : Test(2) {
    my $get_accounts_by_ids_response = Microsoft::AdCenter::CustomerManagementService::GetAccountsByIdsResponse->new
        ->GetAccountsByIdsResult('get accounts by ids result')
    ;

    ok($get_accounts_by_ids_response);

    is($get_accounts_by_ids_response->GetAccountsByIdsResult, 'get accounts by ids result', 'can get get accounts by ids result');
};

1;
