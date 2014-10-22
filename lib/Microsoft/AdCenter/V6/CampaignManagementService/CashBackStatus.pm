package Microsoft::AdCenter::V6::CampaignManagementService::CashBackStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V6::CampaignManagementService::CashBackStatus - Represents "CashBackStatus" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

Disable
Enable

=cut

sub Disable {
    return 'Disable';
}

sub Enable {
    return 'Enable';
}

1;
