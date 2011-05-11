package Microsoft::AdCenter::V6::ReportingService::AdStatusReportFilter;
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

sub Pending {
    return 'Pending';
}

sub Rejected {
    return 'Rejected';
}

sub Submitted {
    return 'Submitted';
}

1;
