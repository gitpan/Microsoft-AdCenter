package Microsoft::AdCenter::V6::CampaignManagementService::Test::ResumeSitePlacementsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CampaignManagementService;
use Microsoft::AdCenter::V6::CampaignManagementService::ResumeSitePlacementsResponse;

sub test_can_create_resume_site_placements_response_and_set_all_fields : Test(1) {
    my $resume_site_placements_response = Microsoft::AdCenter::V6::CampaignManagementService::ResumeSitePlacementsResponse->new
    ;

    ok($resume_site_placements_response);

};

1;
