package Microsoft::AdCenter::V8::CampaignManagementService::BusinessGeoCodeStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V8::CampaignManagementService::BusinessGeoCodeStatus - Represents "BusinessGeoCodeStatus" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    Complete
    Failed
    Invalid
    Pending

=cut

sub Complete {
    return 'Complete';
}

sub Failed {
    return 'Failed';
}

sub Invalid {
    return 'Invalid';
}

sub Pending {
    return 'Pending';
}

1;
