package Microsoft::AdCenter::AdIntelligenceService::Test::KeywordSuggestion;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::KeywordSuggestion;

sub test_can_create_keyword_suggestion_and_set_all_fields : Test(3) {
    my $keyword_suggestion = Microsoft::AdCenter::AdIntelligenceService::KeywordSuggestion->new
        ->Keyword('keyword')
        ->SuggestionsAndConfidence('suggestions and confidence')
    ;

    ok($keyword_suggestion);

    is($keyword_suggestion->Keyword, 'keyword', 'can get keyword');
    is($keyword_suggestion->SuggestionsAndConfidence, 'suggestions and confidence', 'can get suggestions and confidence');
};

1;
