package Microsoft::AdCenter::NotificationManagementService;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::NotificationManagementService - Service client for Microsoft AdCenter Notification Management Service.

=head1 SYNOPSIS

use Microsoft::AdCenter::NotificationManagementService;

my $service_client = Microsoft::AdCenter::NotificationManagementService->new
    ->Password("password");
    ->UserAccessKey("user access key")
    ->UserName("user name")

my $response = $service_client->GetArchivedNotifications(
    APIFlags => ...
    StartDate => ...
    EndDate => ...
);

See L<http://msdn.microsoft.com/en-US/library/ee730327%28v=MSADS.60%29.aspx> for detailed documentation for this service.

=head1 METHODS

=head2 EndPoint

  Changes the end point for this service client.

  Default value:
    https://adcenterapi.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx

=head2 Password

  Gets/sets Password (string) in the request header

=head2 UserAccessKey

  Gets/sets UserAccessKey (string) in the request header

=head2 UserName

  Gets/sets UserName (string) in the request header

=cut

use base qw/Microsoft::AdCenter::Service/;

sub _service_name {
    return 'NotificationManagement';
}

sub _class_name {
    return 'NotificationManagementService';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

sub _default_location {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx';
}

sub _wsdl {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx?wsdl';
}

our $_request_headers = [
    { name => 'ApiUserAuthHeader', type => 'ApiUserAuthHeader', namespace => 'http://adcenter.microsoft.com/syncapis' }
];

our $_request_headers_expanded = {
    Password => 'string',
    UserAccessKey => 'string',
    UserName => 'string'
};

sub _request_headers {
    return $_request_headers;
}

sub _request_headers_expanded {
    return $_request_headers_expanded;
}

our $_response_headers = [
];

our $_response_headers_expanded = {
};

sub _response_headers {
    return $_response_headers;
}

sub _response_headers_expanded {
    return $_response_headers_expanded;
}

=head2 GetArchivedNotifications

  Parameters:
    APIFlags (int)
    StartDate (dateTime)
    EndDate (dateTime)

  Returns:
    GetArchivedNotificationsResponse

=cut

sub GetArchivedNotifications {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'http://adcenter.microsoft.com/syncapis/GetArchivedNotifications',
        request => {
            name => 'GetArchivedNotifications',
            parameters => [
                { name => 'APIFlags', type => 'int', namespace => 'http://adcenter.microsoft.com/syncapis' },
                { name => 'StartDate', type => 'dateTime', namespace => 'http://adcenter.microsoft.com/syncapis' },
                { name => 'EndDate', type => 'dateTime', namespace => 'http://adcenter.microsoft.com/syncapis' }
            ]
        },
        response => {
            name => 'GetArchivedNotificationsResponse'
        },
        parameters => \%args
    );
}

=head2 GetNotifications

  Parameters:
    APIFlags (int)

  Returns:
    GetNotificationsResponse

=cut

sub GetNotifications {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'http://adcenter.microsoft.com/syncapis/GetNotifications',
        request => {
            name => 'GetNotifications',
            parameters => [
                { name => 'APIFlags', type => 'int', namespace => 'http://adcenter.microsoft.com/syncapis' }
            ]
        },
        response => {
            name => 'GetNotificationsResponse'
        },
        parameters => \%args
    );
}

=head2 GetNotificationsByType

  Parameters:
    APIFlags (int)
    NotificationType (NotificationType)

  Returns:
    GetNotificationsByTypeResponse

=cut

sub GetNotificationsByType {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'http://adcenter.microsoft.com/syncapis/GetNotificationsByType',
        request => {
            name => 'GetNotificationsByType',
            parameters => [
                { name => 'APIFlags', type => 'int', namespace => 'http://adcenter.microsoft.com/syncapis' },
                { name => 'NotificationType', type => 'NotificationType', namespace => 'http://adcenter.microsoft.com/syncapis' }
            ]
        },
        response => {
            name => 'GetNotificationsByTypeResponse'
        },
        parameters => \%args
    );
}

our %_simple_types = (
    AccountFinancialStatusType => 'http://adcenter.microsoft.com/syncapis',
    NotificationType => 'http://adcenter.microsoft.com/syncapis',
);

sub _simple_types {
    return %_simple_types;
}

our @_complex_types = (qw/
    AccountClosedNotification
    AccountSignupPaymentReceiptNotification
    ApiUserAuthHeader
    ApproachingCreditCardExpirationNotification
    CreditCardExpiredNotification
    CreditCardNotification
    EditorialRejectionNotification
    GetArchivedNotificationsResponse
    GetNotificationsByTypeResponse
    GetNotificationsResponse
    NewCustomerSignupNotification
    NewUserAddedNotification
    Notification
    UnableToChargeCreditCardNotification
    UserNameReminderNotification
    UserNotification
    UserPasswordResetNotification
/);

sub _complex_types {
    return @_complex_types;
}

our %_array_types = (
    ArrayOfNotification => {
        namespace_uri => 'http://adcenter.microsoft.com/syncapis',
        element_name => 'Notification',
        element_type => 'Notification'
    },
);

sub _array_types {
    return %_array_types;
}

__PACKAGE__->mk_accessors(qw/
    EndPoint
    Password
    UserAccessKey
    UserName
/);

1;
