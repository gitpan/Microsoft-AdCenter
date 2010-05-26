package Microsoft::AdCenter::CustomerManagementService::AdCenterUser;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AdCenterUser - Represents "AdCenterUser" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'AdCenterUser';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    ContactInfo
    CustomerId
    Email
    FirstName
    JobTitle
    LanguageLCID
    LastName
    MiddleInitial
    Password
    SecretAnswer
    SecretQuestion
    UserAddress
    UserContactEmailFormat
    UserContactPhone
    UserContactPost
    UserId
    UserName
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    ContactInfo => 'AdCenterContactInfo',
    CustomerId => 'int',
    Email => 'string',
    FirstName => 'string',
    JobTitle => 'string',
    LanguageLCID => 'LCID',
    LastName => 'string',
    MiddleInitial => 'string',
    Password => 'string',
    SecretAnswer => 'string',
    SecretQuestion => 'SecretQuestions',
    UserAddress => 'AdCenterAddress',
    UserContactEmailFormat => 'EmailFormat',
    UserContactPhone => 'boolean',
    UserContactPost => 'boolean',
    UserId => 'int',
    UserName => 'string',
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

ContactInfo (AdCenterContactInfo)
CustomerId (int)
Email (string)
FirstName (string)
JobTitle (string)
LanguageLCID (LCID)
LastName (string)
MiddleInitial (string)
Password (string)
SecretAnswer (string)
SecretQuestion (SecretQuestions)
UserAddress (AdCenterAddress)
UserContactEmailFormat (EmailFormat)
UserContactPhone (boolean)
UserContactPost (boolean)
UserId (int)
UserName (string)

=back

=cut

