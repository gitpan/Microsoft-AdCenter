package Microsoft::AdCenter::CustomerManagementService::Test::CardInvoiceResponseMsg;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::CardInvoiceResponseMsg;

sub test_can_create_card_invoice_response_msg_and_set_all_fields : Test(2) {
    my $card_invoice_response_msg = Microsoft::AdCenter::CustomerManagementService::CardInvoiceResponseMsg->new
        ->CardInvoice('card invoice')
    ;

    ok($card_invoice_response_msg);

    is($card_invoice_response_msg->CardInvoice, 'card invoice', 'can get card invoice');
};

1;
