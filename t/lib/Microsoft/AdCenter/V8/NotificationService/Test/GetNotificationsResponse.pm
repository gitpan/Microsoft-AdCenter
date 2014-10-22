package Microsoft::AdCenter::V8::NotificationService::Test::GetNotificationsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::NotificationService;
use Microsoft::AdCenter::V8::NotificationService::GetNotificationsResponse;

sub test_can_create_get_notifications_response_and_set_all_fields : Test(2) {
    my $get_notifications_response = Microsoft::AdCenter::V8::NotificationService::GetNotificationsResponse->new
        ->Notifications('notifications')
    ;

    ok($get_notifications_response);

    is($get_notifications_response->Notifications, 'notifications', 'can get notifications');
};

1;
