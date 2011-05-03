package Microsoft::AdCenter::AdIntelligenceService::Test::SuggestKeywordsFromExistingKeywordsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::SuggestKeywordsFromExistingKeywordsResponse;

sub test_can_create_suggest_keywords_from_existing_keywords_response_and_set_all_fields : Test(2) {
    my $suggest_keywords_from_existing_keywords_response = Microsoft::AdCenter::AdIntelligenceService::SuggestKeywordsFromExistingKeywordsResponse->new
        ->KeywordSuggestions('keyword suggestions')
    ;

    ok($suggest_keywords_from_existing_keywords_response);

    is($suggest_keywords_from_existing_keywords_response->KeywordSuggestions, 'keyword suggestions', 'can get keyword suggestions');
};

1;
