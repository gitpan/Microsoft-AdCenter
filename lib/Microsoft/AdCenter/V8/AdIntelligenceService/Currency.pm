package Microsoft::AdCenter::V8::AdIntelligenceService::Currency;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V8::AdIntelligenceService::Currency - Represents "Currency" in Microsoft AdCenter Ad Intelligence Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    CanadianDollar
    EURO
    SingaporeDollar
    UKPound
    USDollar

=cut

sub CanadianDollar {
    return 'CanadianDollar';
}

sub EURO {
    return 'EURO';
}

sub SingaporeDollar {
    return 'SingaporeDollar';
}

sub UKPound {
    return 'UKPound';
}

sub USDollar {
    return 'USDollar';
}

1;
