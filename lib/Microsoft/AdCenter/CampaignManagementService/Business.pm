package Microsoft::AdCenter::CampaignManagementService::Business;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::Business - Represents "Business" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'Business';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    AddressLine1
    AddressLine2
    BusinessImageIcon
    City
    CountryOrRegion
    Description
    Email
    GeoCodeStatus
    HrsOfOperation
    Id
    IsOpen24Hours
    LatitudeDegrees
    LongitudeDegrees
    Name
    OtherPaymentTypeDesc
    Payment
    Phone
    StateOrProvince
    Status
    URL
    ZipOrPostalCode
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AddressLine1 => 'string',
    AddressLine2 => 'string',
    BusinessImageIcon => 'BusinessImageIcon',
    City => 'string',
    CountryOrRegion => 'string',
    Description => 'string',
    Email => 'string',
    GeoCodeStatus => 'BusinessGeoCodeStatus',
    HrsOfOperation => 'ArrayOfHoursOfOperation',
    Id => 'long',
    IsOpen24Hours => 'boolean',
    LatitudeDegrees => 'double',
    LongitudeDegrees => 'double',
    Name => 'string',
    OtherPaymentTypeDesc => 'string',
    Payment => 'ArrayOfPaymentType',
    Phone => 'string',
    StateOrProvince => 'string',
    Status => 'BusinessStatus',
    URL => 'string',
    ZipOrPostalCode => 'string',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

__PACKAGE__->mk_accessors(__PACKAGE__->_attributes);

1;

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-US/library/ee730327%28v=MSADS.60%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

=head2 new

Creates a new instance

=head2 get/set methods

=over 8

    AddressLine1 (string)
    AddressLine2 (string)
    BusinessImageIcon (BusinessImageIcon)
    City (string)
    CountryOrRegion (string)
    Description (string)
    Email (string)
    GeoCodeStatus (BusinessGeoCodeStatus)
    HrsOfOperation (ArrayOfHoursOfOperation)
    Id (long)
    IsOpen24Hours (boolean)
    LatitudeDegrees (double)
    LongitudeDegrees (double)
    Name (string)
    OtherPaymentTypeDesc (string)
    Payment (ArrayOfPaymentType)
    Phone (string)
    StateOrProvince (string)
    Status (BusinessStatus)
    URL (string)
    ZipOrPostalCode (string)

=back

=cut

