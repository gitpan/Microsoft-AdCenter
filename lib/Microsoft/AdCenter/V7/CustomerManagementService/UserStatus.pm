package Microsoft::AdCenter::V7::CustomerManagementService::UserStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::CustomerManagementService::UserStatus - Represents "UserStatus" in Microsoft AdCenter Customer Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

Active
Deleted
Inactive
New

=cut

sub Active {
    return 'Active';
}

sub Deleted {
    return 'Deleted';
}

sub Inactive {
    return 'Inactive';
}

sub New {
    return 'New';
}

1;
