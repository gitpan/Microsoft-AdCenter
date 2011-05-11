package Microsoft::AdCenter::V7::CustomerManagementService::PaymentMethodType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Check {
    return 'Check';
}

sub CreditCard {
    return 'CreditCard';
}

sub ElectronicFundsTransfer {
    return 'ElectronicFundsTransfer';
}

sub Invoice {
    return 'Invoice';
}

1;
