package Microsoft::AdCenter::AdministrationService;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::AdministrationService - Service client for Microsoft AdCenter Administration Service.

=head1 SYNOPSIS

    use Microsoft::AdCenter::AdministrationService;

    my $service_client = Microsoft::AdCenter::AdministrationService->new
        ->ApplicationToken("application token")
        ->CustomerAccountId("customer account id")
        ->CustomerId("customer id")
        ->DeveloperToken("developer token")
        ->Password("password")
        ->UserName("user name");

    my $response = $service_client->GetAssignedQuota(
    );

See L<http://msdn.microsoft.com/en-us/library/ee730328%28v=MSADS.70%29.aspx> for detailed documentation for this service.

=head1 METHODS

=head2 EndPoint

Changes the end point for this service client.

Default value: https://adcenterapi.microsoft.com/Api/Advertiser/V7/Administration/AdministrationService.svc

=head2 ApplicationToken

Gets/sets ApplicationToken (string) in the request header

=head2 CustomerAccountId

Gets/sets CustomerAccountId (string) in the request header

=head2 CustomerId

Gets/sets CustomerId (string) in the request header

=head2 DeveloperToken

Gets/sets DeveloperToken (string) in the request header

=head2 Password

Gets/sets Password (string) in the request header

=head2 UserName

Gets/sets UserName (string) in the request header

=head2 TrackingId

Gets TrackingId (string) in the response header

=cut

use base qw/Microsoft::AdCenter::Service/;

sub _service_name {
    return 'AdministrationService';
}

sub _class_name {
    return 'AdministrationService';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v7';
}

sub _default_location {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/V7/Administration/AdministrationService.svc';
}

sub _wsdl {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/v7/Administration/AdministrationService.svc?wsdl';
}

our $_request_headers = [
    { name => 'ApplicationToken', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' },
    { name => 'CustomerAccountId', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' },
    { name => 'CustomerId', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' },
    { name => 'DeveloperToken', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' },
    { name => 'Password', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' },
    { name => 'UserName', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' }
];

our $_request_headers_expanded = {
    ApplicationToken => 'string',
    CustomerAccountId => 'string',
    CustomerId => 'string',
    DeveloperToken => 'string',
    Password => 'string',
    UserName => 'string'
};

sub _request_headers {
    return $_request_headers;
}

sub _request_headers_expanded {
    return $_request_headers_expanded;
}

our $_response_headers = [
    { name => 'TrackingId', type => 'string', namespace => 'https://adcenter.microsoft.com/v7' }
];

our $_response_headers_expanded = {
    TrackingId => 'string'
};

sub _response_headers {
    return $_response_headers;
}

sub _response_headers_expanded {
    return $_response_headers_expanded;
}

=head2 GetAssignedQuota

=over

=item Parameters:


=item Returns:

    GetAssignedQuotaResponse

=back

=cut

sub GetAssignedQuota {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAssignedQuota',
        request => {
            name => 'GetAssignedQuotaRequest',
            parameters => [
            ]
        },
        response => {
            name => 'GetAssignedQuotaResponse'
        },
        parameters => \%args
    );
}

=head2 GetRemainingQuota

=over

=item Parameters:


=item Returns:

    GetRemainingQuotaResponse

=back

=cut

sub GetRemainingQuota {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetRemainingQuota',
        request => {
            name => 'GetRemainingQuotaRequest',
            parameters => [
            ]
        },
        response => {
            name => 'GetRemainingQuotaResponse'
        },
        parameters => \%args
    );
}

our %_simple_types = (
    char => 'http://schemas.microsoft.com/2003/10/Serialization/',
    duration => 'http://schemas.microsoft.com/2003/10/Serialization/',
    guid => 'http://schemas.microsoft.com/2003/10/Serialization/',
);

sub _simple_types {
    return %_simple_types;
}

our @_complex_types = (qw/
    AdApiError
    AdApiFaultDetail
    ApplicationFault
    GetAssignedQuotaResponse
    GetRemainingQuotaResponse
/);

sub _complex_types {
    return @_complex_types;
}

our %_array_types = (
    ArrayOfAdApiError => {
        namespace_uri => 'https://adapi.microsoft.com',
        element_name => 'AdApiError',
        element_type => 'AdApiError'
    },
);

sub _array_types {
    return %_array_types;
}

__PACKAGE__->mk_accessors(qw/
    ApplicationToken
    CustomerAccountId
    CustomerId
    DeveloperToken
    Password
    UserName
    TrackingId
/);

1;
