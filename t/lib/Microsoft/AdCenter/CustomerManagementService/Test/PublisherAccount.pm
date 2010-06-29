package Microsoft::AdCenter::CustomerManagementService::Test::PublisherAccount;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::PublisherAccount;

sub test_can_create_publisher_account_and_set_all_fields : Test(1) {
    my $publisher_account = Microsoft::AdCenter::CustomerManagementService::PublisherAccount->new
    ;

    ok($publisher_account);

};

1;
