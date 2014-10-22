package Microsoft::AdCenter::V7::CustomerBillingService::DataType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::CustomerBillingService::DataType - Represents "DataType" in Microsoft AdCenter Customer Billing Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    Pdf
    Xml

=cut

sub Pdf {
    return 'Pdf';
}

sub Xml {
    return 'Xml';
}

1;
