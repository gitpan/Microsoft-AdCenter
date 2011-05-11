package Microsoft::AdCenter::V6::CustomerManagementService::ResultStatus;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub Failed {
    return 'Failed';
}

sub PartiallySucceeded {
    return 'PartiallySucceeded';
}

sub Succeeded {
    return 'Succeeded';
}

1;
