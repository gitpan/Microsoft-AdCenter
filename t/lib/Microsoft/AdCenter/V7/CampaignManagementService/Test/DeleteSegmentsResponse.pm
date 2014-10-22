package Microsoft::AdCenter::V7::CampaignManagementService::Test::DeleteSegmentsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::DeleteSegmentsResponse;

sub test_can_create_delete_segments_response_and_set_all_fields : Test(1) {
    my $delete_segments_response = Microsoft::AdCenter::V7::CampaignManagementService::DeleteSegmentsResponse->new
    ;

    ok($delete_segments_response);

};

1;
