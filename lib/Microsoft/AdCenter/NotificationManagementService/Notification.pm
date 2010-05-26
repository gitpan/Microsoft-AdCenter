package Microsoft::AdCenter::NotificationManagementService::Notification;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::NotificationManagementService::Notification - Represents "Notification" in Microsoft AdCenter Notification Management Service.

=cut

sub _type_name {
    return 'Notification';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    CustomerId
    NotificationDate
    NotificationType
    RecipientEmailAddress
    UserLocale
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    CustomerId => 'int',
    NotificationDate => 'dateTime',
    NotificationType => 'NotificationType',
    RecipientEmailAddress => 'string',
    UserLocale => 'string',
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

    CustomerId (int)
    NotificationDate (dateTime)
    NotificationType (NotificationType)
    RecipientEmailAddress (string)
    UserLocale (string)

=back

=cut

