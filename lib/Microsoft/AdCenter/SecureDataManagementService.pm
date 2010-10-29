package Microsoft::AdCenter::SecureDataManagementService;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::SecureDataManagementService - Service client for Microsoft AdCenter Secure Data Management Service.

=head1 SYNOPSIS

    use Microsoft::AdCenter::SecureDataManagementService;

    my $service_client = Microsoft::AdCenter::SecureDataManagementService->new
        ->ApplicationToken("application token")
        ->DeveloperToken("developer token")
        ->Password("password")
        ->UserName("user name");

    my $response = $service_client->AddPaymentMethod(
        PaymentMethod => ...
    );

See L<http://msdn.microsoft.com/en-us/library/ee730328%28v=MSADS.70%29.aspx> for detailed documentation for this service.

=head1 METHODS

=head2 EndPoint

Changes the end point for this service client.

Default value: https://securityservices.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc

=head2 ApplicationToken

Gets/sets ApplicationToken (string) in the request header

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
    return 'SecureDataManagementService';
}

sub _class_name {
    return 'SecureDataManagementService';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/securedatamanagement';
}

sub _default_location {
    return 'https://securityservices.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc';
}

sub _wsdl {
    return 'https://securityservices.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc?wsdl';
}

our $_request_headers = [
    { name => 'ApplicationToken', type => 'string', namespace => 'https://adcenter.microsoft.com/api/securedatamanagement' },
    { name => 'DeveloperToken', type => 'string', namespace => 'https://adcenter.microsoft.com/api/securedatamanagement' },
    { name => 'Password', type => 'string', namespace => 'https://adcenter.microsoft.com/api/securedatamanagement' },
    { name => 'UserName', type => 'string', namespace => 'https://adcenter.microsoft.com/api/securedatamanagement' }
];

our $_request_headers_expanded = {
    ApplicationToken => 'string',
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
    { name => 'TrackingId', type => 'string', namespace => 'https://adcenter.microsoft.com/api/securedatamanagement' }
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

=head2 AddPaymentMethod

=over

=item Parameters:

    PaymentMethod (PaymentMethod)

=item Returns:

    AddPaymentMethodResponse

=back

=cut

sub AddPaymentMethod {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddPaymentMethod',
        request => {
            name => 'AddPaymentMethodRequest',
            parameters => [
                { name => 'PaymentMethod', type => 'PaymentMethod', namespace => 'https://adcenter.microsoft.com/api/securedatamanagement' }
            ]
        },
        response => {
            name => 'AddPaymentMethodResponse'
        },
        parameters => \%args
    );
}

our %_simple_types = (
    CreditCardType => 'https://adcenter.microsoft.com/api/customermanagement/Entities',
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
    AddPaymentMethodResponse
    Address
    ApiFault
    ApplicationFault
    CreditCardPaymentMethod
    OperationError
    PaymentMethod
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
    ArrayOfOperationError => {
        namespace_uri => 'https://adcenter.microsoft.com/api/customermanagement/Exception',
        element_name => 'OperationError',
        element_type => 'OperationError'
    },
);

sub _array_types {
    return %_array_types;
}

__PACKAGE__->mk_accessors(qw/
    ApplicationToken
    DeveloperToken
    Password
    UserName
    TrackingId
/);

1;
