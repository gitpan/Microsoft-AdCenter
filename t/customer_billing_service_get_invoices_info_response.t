#!perl -T
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use lib 't/lib';

use Microsoft::AdCenter::CustomerBillingService::Test::GetInvoicesInfoResponse;

Test::Class->runtests;

