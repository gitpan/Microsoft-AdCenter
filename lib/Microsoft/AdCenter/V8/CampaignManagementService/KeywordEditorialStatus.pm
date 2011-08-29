package Microsoft::AdCenter::V8::CampaignManagementService::KeywordEditorialStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V8::CampaignManagementService::KeywordEditorialStatus - Represents "KeywordEditorialStatus" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    Active
    Disapproved
    Inactive

=cut

sub Active {
    return 'Active';
}

sub Disapproved {
    return 'Disapproved';
}

sub Inactive {
    return 'Inactive';
}

1;
