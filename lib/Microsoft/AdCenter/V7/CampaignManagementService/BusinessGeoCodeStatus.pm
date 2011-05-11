package Microsoft::AdCenter::V7::CampaignManagementService::BusinessGeoCodeStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

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
