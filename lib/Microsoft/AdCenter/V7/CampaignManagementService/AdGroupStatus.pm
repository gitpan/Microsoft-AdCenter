package Microsoft::AdCenter::V7::CampaignManagementService::AdGroupStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Active {
    return 'Active';
}

sub Deleted {
    return 'Deleted';
}

sub Draft {
    return 'Draft';
}

sub Paused {
    return 'Paused';
}

1;
