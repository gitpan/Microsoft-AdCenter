package Microsoft::AdCenter::V7::CustomerManagementService::AccountLifeCycleStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::CustomerManagementService::AccountLifeCycleStatus - Represents "AccountLifeCycleStatus" in Microsoft AdCenter Customer Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

Active
Draft
Inactive
Pause

=cut

sub Active {
    return 'Active';
}

sub Draft {
    return 'Draft';
}

sub Inactive {
    return 'Inactive';
}

sub Pause {
    return 'Pause';
}

1;
