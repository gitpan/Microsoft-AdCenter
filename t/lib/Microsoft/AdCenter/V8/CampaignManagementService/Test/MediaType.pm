package Microsoft::AdCenter::V8::CampaignManagementService::Test::MediaType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CampaignManagementService;
use Microsoft::AdCenter::V8::CampaignManagementService::MediaType;

sub test_can_create_media_type_and_set_all_fields : Test(3) {
    my $media_type = Microsoft::AdCenter::V8::CampaignManagementService::MediaType->new
        ->Dimensions('dimensions')
        ->Name('name')
    ;

    ok($media_type);

    is($media_type->Dimensions, 'dimensions', 'can get dimensions');
    is($media_type->Name, 'name', 'can get name');
};

1;
