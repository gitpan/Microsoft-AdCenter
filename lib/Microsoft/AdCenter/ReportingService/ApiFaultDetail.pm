package Microsoft::AdCenter::ReportingService::ApiFaultDetail;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ReportingService::ApplicationFault/;

=head1 NAME

Microsoft::AdCenter::ReportingService::ApiFaultDetail - Represents "ApiFaultDetail" in Microsoft AdCenter Reporting Service.

=head1 INHERITANCE

Microsoft::AdCenter::ReportingService::ApplicationFault

=cut

sub _type_name {
    return 'ApiFaultDetail';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    BatchErrors
    OperationErrors
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    BatchErrors => 'ArrayOfBatchError',
    OperationErrors => 'ArrayOfOperationError',
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

    BatchErrors (ArrayOfBatchError)
    OperationErrors (ArrayOfOperationError)

    Inherited attributes are not listed.

=back

=cut

