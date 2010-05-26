package Microsoft::AdCenter::CustomerManagementService::AdCenterCustomer;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AdCenterCustomer - Represents "AdCenterCustomer" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'AdCenterCustomer';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    CustomerAddress
    CustomerId
    CustomerName
    IndustryId
    MarketId
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    CustomerAddress => 'AdCenterAddress',
    CustomerId => 'int',
    CustomerName => 'string',
    IndustryId => 'Industry',
    MarketId => 'Market',
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

CustomerAddress (AdCenterAddress)
CustomerId (int)
CustomerName (string)
IndustryId (Industry)
MarketId (Market)

=back

=cut

