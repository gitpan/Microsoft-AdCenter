package Microsoft::AdCenter::V8::OptimizerService::Test::ApplyBudgetOpportunitiesResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::OptimizerService;
use Microsoft::AdCenter::V8::OptimizerService::ApplyBudgetOpportunitiesResponse;

sub test_can_create_apply_budget_opportunities_response_and_set_all_fields : Test(1) {
    my $apply_budget_opportunities_response = Microsoft::AdCenter::V8::OptimizerService::ApplyBudgetOpportunitiesResponse->new
    ;

    ok($apply_budget_opportunities_response);

};

1;
