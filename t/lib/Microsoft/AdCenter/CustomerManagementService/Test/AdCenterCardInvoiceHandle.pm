package Microsoft::AdCenter::CustomerManagementService::Test::AdCenterCardInvoiceHandle;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::AdCenterCardInvoiceHandle;

sub test_can_create_ad_center_card_invoice_handle_and_set_all_fields : Test(8) {
    my $ad_center_card_invoice_handle = Microsoft::AdCenter::CustomerManagementService::AdCenterCardInvoiceHandle->new
        ->AccountId('account id')
        ->BillingDocumentId('billing document id')
        ->CustomerId('customer id')
        ->EndDateTicks('end date ticks')
        ->NoActivity('no activity')
        ->StartDateTicks('start date ticks')
        ->UserId('user id')
    ;

    ok($ad_center_card_invoice_handle);

    is($ad_center_card_invoice_handle->AccountId, 'account id', 'can get account id');
    is($ad_center_card_invoice_handle->BillingDocumentId, 'billing document id', 'can get billing document id');
    is($ad_center_card_invoice_handle->CustomerId, 'customer id', 'can get customer id');
    is($ad_center_card_invoice_handle->EndDateTicks, 'end date ticks', 'can get end date ticks');
    is($ad_center_card_invoice_handle->NoActivity, 'no activity', 'can get no activity');
    is($ad_center_card_invoice_handle->StartDateTicks, 'start date ticks', 'can get start date ticks');
    is($ad_center_card_invoice_handle->UserId, 'user id', 'can get user id');
};

1;
