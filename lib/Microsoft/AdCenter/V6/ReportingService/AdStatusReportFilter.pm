package Microsoft::AdCenter::V6::ReportingService::AdStatusReportFilter;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V6::ReportingService::AdStatusReportFilter - Represents "AdStatusReportFilter" in Microsoft AdCenter Reporting Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

Active
Deleted
Pending
Rejected
Submitted

=cut

sub Active {
    return 'Active';
}

sub Deleted {
    return 'Deleted';
}

sub Pending {
    return 'Pending';
}

sub Rejected {
    return 'Rejected';
}

sub Submitted {
    return 'Submitted';
}

1;
