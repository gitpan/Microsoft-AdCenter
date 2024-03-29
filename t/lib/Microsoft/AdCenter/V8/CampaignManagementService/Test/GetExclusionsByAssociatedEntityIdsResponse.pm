package Microsoft::AdCenter::V8::CampaignManagementService::Test::GetExclusionsByAssociatedEntityIdsResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CampaignManagementService;
use Microsoft::AdCenter::V8::CampaignManagementService::GetExclusionsByAssociatedEntityIdsResponse;

sub test_can_create_get_exclusions_by_associated_entity_ids_response_and_set_all_fields : Test(2) {
    my $get_exclusions_by_associated_entity_ids_response = Microsoft::AdCenter::V8::CampaignManagementService::GetExclusionsByAssociatedEntityIdsResponse->new
        ->EntityToExclusionsAssociations('entity to exclusions associations')
    ;

    ok($get_exclusions_by_associated_entity_ids_response);

    is($get_exclusions_by_associated_entity_ids_response->EntityToExclusionsAssociations, 'entity to exclusions associations', 'can get entity to exclusions associations');
};

1;
