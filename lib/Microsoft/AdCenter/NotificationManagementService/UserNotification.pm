package Microsoft::AdCenter::NotificationManagementService::UserNotification;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::NotificationManagementService::Notification/;

=head1 NAME

Microsoft::AdCenter::NotificationManagementService::UserNotification - Represents "UserNotification" in Microsoft AdCenter Notification Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::NotificationManagementService::Notification

=cut

sub _type_name {
    return 'UserNotification';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    ActivationCode
    UserId
    UserName
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    ActivationCode => 'string',
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

ActivationCode (string)
UserId (int)
UserName (string)

Inherited attributes are not listed.

=back

=cut

