package Microsoft::AdCenter::V7::ReportingService::ReportFormat;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::ReportingService::ReportFormat - Represents "ReportFormat" in Microsoft AdCenter Reporting Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    Csv
    Tsv
    Xml

=cut

sub Csv {
    return 'Csv';
}

sub Tsv {
    return 'Tsv';
}

sub Xml {
    return 'Xml';
}

1;
