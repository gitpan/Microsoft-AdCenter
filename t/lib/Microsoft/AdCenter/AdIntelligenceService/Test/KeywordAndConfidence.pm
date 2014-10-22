package Microsoft::AdCenter::AdIntelligenceService::Test::KeywordAndConfidence;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::KeywordAndConfidence;

sub test_can_create_keyword_and_confidence_and_set_all_fields : Test(3) {
    my $keyword_and_confidence = Microsoft::AdCenter::AdIntelligenceService::KeywordAndConfidence->new
        ->ConfidenceScore('confidence score')
        ->SuggestedKeyword('suggested keyword')
    ;

    ok($keyword_and_confidence);

    is($keyword_and_confidence->ConfidenceScore, 'confidence score', 'can get confidence score');
    is($keyword_and_confidence->SuggestedKeyword, 'suggested keyword', 'can get suggested keyword');
};

1;
