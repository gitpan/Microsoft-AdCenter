package Microsoft::AdCenter::V7::CampaignManagementService::CostModel;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::CampaignManagementService::CostModel - Represents "CostModel" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    NonAdvertising
    None
    Shipped
    Taxed

=cut

sub NonAdvertising {
    return 'NonAdvertising';
}

sub None {
    return 'None';
}

sub Shipped {
    return 'Shipped';
}

sub Taxed {
    return 'Taxed';
}

1;
