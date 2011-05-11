package Microsoft::AdCenter::V6::NotificationManagementService::NotificationType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub AccountClosed {
    return 'AccountClosed';
}

sub AccountSignupPaymentReceipt {
    return 'AccountSignupPaymentReceipt';
}

sub ApproachingCreditCardExpiration {
    return 'ApproachingCreditCardExpiration';
}

sub CreditCardExpired {
    return 'CreditCardExpired';
}

sub EditorialRejection {
    return 'EditorialRejection';
}

sub NewCustomerSignup {
    return 'NewCustomerSignup';
}

sub NewUserAdded {
    return 'NewUserAdded';
}

sub UnableToChargeCreditCard {
    return 'UnableToChargeCreditCard';
}

sub UserNameReminder {
    return 'UserNameReminder';
}

sub UserPasswordReset {
    return 'UserPasswordReset';
}

1;
