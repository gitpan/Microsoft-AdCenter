package Microsoft::AdCenter::V6::ReportingService::CampaignStatusReportFilter;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Active {
    return 'Active';
}

sub BudgetPaused {
    return 'BudgetPaused';
}

sub Cancelled {
    return 'Cancelled';
}

sub Deleted {
    return 'Deleted';
}

sub Paused {
    return 'Paused';
}

sub Submitted {
    return 'Submitted';
}

1;
