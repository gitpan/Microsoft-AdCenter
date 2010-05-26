package Microsoft::AdCenter::CampaignManagementService::Test::GetKeywordQualityScoresByIdsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetKeywordQualityScoresByIdsResponse;

sub test_can_create_get_keyword_quality_scores_by_ids_response_and_set_all_fields : Test(2) {
    my $get_keyword_quality_scores_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetKeywordQualityScoresByIdsResponse->new
        ->KeywordQuality('keyword quality')
    ;

    ok($get_keyword_quality_scores_by_ids_response);

    is($get_keyword_quality_scores_by_ids_response->KeywordQuality, 'keyword quality', 'can get keyword quality');
};

1;
