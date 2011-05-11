package Microsoft::AdCenter::V6::ReportingService::ReportRequestStatusType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Error {
    return 'Error';
}

sub Pending {
    return 'Pending';
}

sub Success {
    return 'Success';
}

1;
