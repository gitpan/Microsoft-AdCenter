package Microsoft::AdCenter::CampaignManagementService::Test::KeywordQuality;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::KeywordQuality;

sub test_can_create_keyword_quality_and_set_all_fields : Test(6) {
    my $keyword_quality = Microsoft::AdCenter::CampaignManagementService::KeywordQuality->new
        ->BroadMatchQualityScore('broad match quality score')
        ->ContentMatchQualityScore('content match quality score')
        ->ExactMatchQualityScore('exact match quality score')
        ->KeywordId('keyword id')
        ->PhraseMatchQualityScore('phrase match quality score')
    ;

    ok($keyword_quality);

    is($keyword_quality->BroadMatchQualityScore, 'broad match quality score', 'can get broad match quality score');
    is($keyword_quality->ContentMatchQualityScore, 'content match quality score', 'can get content match quality score');
    is($keyword_quality->ExactMatchQualityScore, 'exact match quality score', 'can get exact match quality score');
    is($keyword_quality->KeywordId, 'keyword id', 'can get keyword id');
    is($keyword_quality->PhraseMatchQualityScore, 'phrase match quality score', 'can get phrase match quality score');
};

1;
