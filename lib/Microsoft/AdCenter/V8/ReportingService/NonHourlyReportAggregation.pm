package Microsoft::AdCenter::V8::ReportingService::NonHourlyReportAggregation;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V8::ReportingService::NonHourlyReportAggregation - Represents "NonHourlyReportAggregation" in Microsoft AdCenter Reporting Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    Daily
    Monthly
    Summary
    Weekly
    Yearly

=cut

sub Daily {
    return 'Daily';
}

sub Monthly {
    return 'Monthly';
}

sub Summary {
    return 'Summary';
}

sub Weekly {
    return 'Weekly';
}

sub Yearly {
    return 'Yearly';
}

1;
