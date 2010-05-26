package Microsoft::AdCenter::NotificationManagementService::ApiUserAuthHeader;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::NotificationManagementService::ApiUserAuthHeader - Represents "ApiUserAuthHeader" in Microsoft AdCenter Notification Management Service.

=cut

sub _type_name {
    return 'ApiUserAuthHeader';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    Password
    UserAccessKey
    UserName
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Password => 'string',
    UserAccessKey => 'string',
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

Password (string)
UserAccessKey (string)
UserName (string)

=back

=cut

