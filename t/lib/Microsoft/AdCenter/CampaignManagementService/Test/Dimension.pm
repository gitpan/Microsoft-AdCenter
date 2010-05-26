package Microsoft::AdCenter::CampaignManagementService::Test::Dimension;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Dimension;

sub test_can_create_dimension_and_set_all_fields : Test(3) {
    my $dimension = Microsoft::AdCenter::CampaignManagementService::Dimension->new
        ->Height('height')
        ->Width('width')
    ;

    ok($dimension);

    is($dimension->Height, 'height', 'can get height');
    is($dimension->Width, 'width', 'can get width');
};

1;
