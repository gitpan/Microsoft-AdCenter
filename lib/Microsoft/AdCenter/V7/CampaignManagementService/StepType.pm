package Microsoft::AdCenter::V7::CampaignManagementService::StepType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::CampaignManagementService::StepType - Represents "StepType" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

Browse
Conversion
Lead
Prospect

=cut

sub Browse {
    return 'Browse';
}

sub Conversion {
    return 'Conversion';
}

sub Lead {
    return 'Lead';
}

sub Prospect {
    return 'Prospect';
}

1;
