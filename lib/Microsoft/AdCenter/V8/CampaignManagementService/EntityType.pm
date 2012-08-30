package Microsoft::AdCenter::V8::CampaignManagementService::EntityType;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V8::CampaignManagementService::EntityType - Represents "EntityType" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    AdGroup
    Campaign
    Target

=cut

sub AdGroup {
    return 'AdGroup';
}

sub Campaign {
    return 'Campaign';
}

sub Target {
    return 'Target';
}

1;
