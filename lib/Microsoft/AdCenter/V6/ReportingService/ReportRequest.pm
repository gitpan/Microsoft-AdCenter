package Microsoft::AdCenter::V6::ReportingService::ReportRequest;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::V6::ReportingService::ReportRequest - Represents "ReportRequest" in Microsoft AdCenter Reporting Service.

=cut

sub _type_name {
    return 'ReportRequest';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    Format
    Language
    ReportName
    ReturnOnlyCompleteData
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Format => 'ReportFormat',
    Language => 'ReportLanguage',
    ReportName => 'string',
    ReturnOnlyCompleteData => 'boolean',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    Format => 0,
    Language => 0,
    ReportName => 0,
    ReturnOnlyCompleteData => 0,
);

sub _attribute_min_occurs {
    my ($self, $attribute) = @_;
    if (exists $_attribute_min_occurs{$attribute}) {
        return $_attribute_min_occurs{$attribute};
    }
    return $self->SUPER::_attribute_min_occurs($attribute);
}

__PACKAGE__->mk_accessors(@_attributes);

1;

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730328%28v=MSADS.70%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

=head2 new

Creates a new instance

=head2 Format

Gets/sets Format (ReportFormat)

=head2 Language

Gets/sets Language (ReportLanguage)

=head2 ReportName

Gets/sets ReportName (string)

=head2 ReturnOnlyCompleteData

Gets/sets ReturnOnlyCompleteData (boolean)

=cut
