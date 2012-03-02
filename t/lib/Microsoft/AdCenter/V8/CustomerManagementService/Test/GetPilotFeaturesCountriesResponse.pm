package Microsoft::AdCenter::V8::CustomerManagementService::Test::GetPilotFeaturesCountriesResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CustomerManagementService;
use Microsoft::AdCenter::V8::CustomerManagementService::GetPilotFeaturesCountriesResponse;

sub test_can_create_get_pilot_features_countries_response_and_set_all_fields : Test(2) {
    my $get_pilot_features_countries_response = Microsoft::AdCenter::V8::CustomerManagementService::GetPilotFeaturesCountriesResponse->new
        ->PilotFeatures('pilot features')
    ;

    ok($get_pilot_features_countries_response);

    is($get_pilot_features_countries_response->PilotFeatures, 'pilot features', 'can get pilot features');
};

1;
