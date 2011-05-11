package Microsoft::AdCenter::V7::CustomerManagementService::AccountLifeCycleStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Active {
    return 'Active';
}

sub Draft {
    return 'Draft';
}

sub Inactive {
    return 'Inactive';
}

sub Pause {
    return 'Pause';
}

1;