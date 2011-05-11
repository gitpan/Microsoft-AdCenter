package Microsoft::AdCenter::V7::CampaignManagementService::CampaignStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Active {
    return 'Active';
}

sub BudgetAndManualPaused {
    return 'BudgetAndManualPaused';
}

sub BudgetPaused {
    return 'BudgetPaused';
}

sub Deleted {
    return 'Deleted';
}

sub Paused {
    return 'Paused';
}

1;
