package Microsoft::AdCenter::AdIntelligenceService::Test::BatchError;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::AdIntelligenceService;
use Microsoft::AdCenter::AdIntelligenceService::BatchError;

sub test_can_create_batch_error_and_set_all_fields : Test(6) {
    my $batch_error = Microsoft::AdCenter::AdIntelligenceService::BatchError->new
        ->Code('code')
        ->Details('details')
        ->ErrorCode('error code')
        ->Index('index')
        ->Message('message')
    ;

    ok($batch_error);

    is($batch_error->Code, 'code', 'can get code');
    is($batch_error->Details, 'details', 'can get details');
    is($batch_error->ErrorCode, 'error code', 'can get error code');
    is($batch_error->Index, 'index', 'can get index');
    is($batch_error->Message, 'message', 'can get message');
};

1;