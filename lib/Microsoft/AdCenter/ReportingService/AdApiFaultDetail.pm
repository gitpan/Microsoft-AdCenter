package Microsoft::AdCenter::ReportingService::AdApiFaultDetail;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ReportingService::ApplicationFault/;

=head1 NAME

Microsoft::AdCenter::ReportingService::AdApiFaultDetail - Represents "AdApiFaultDetail" in Microsoft AdCenter Reporting Service.

=head1 INHERITANCE

Microsoft::AdCenter::ReportingService::ApplicationFault

=cut

sub _type_name {
    return 'AdApiFaultDetail';
}

sub _namespace_uri {
    return 'https://adapi.microsoft.com';
}

our @_attributes = (qw/
    Errors
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Errors => 'ArrayOfAdApiError',
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

Errors (ArrayOfAdApiError)

Inherited attributes are not listed.

=back

=cut

