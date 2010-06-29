package Microsoft::AdCenter::ReportingService::AdGroupPerformanceReportRequest;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ReportingService::ReportRequest/;

=head1 NAME

Microsoft::AdCenter::ReportingService::AdGroupPerformanceReportRequest - Represents "AdGroupPerformanceReportRequest" in Microsoft AdCenter Reporting Service.

=head1 INHERITANCE

Microsoft::AdCenter::ReportingService::ReportRequest

=cut

sub _type_name {
    return 'AdGroupPerformanceReportRequest';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    Aggregation
    Columns
    Filter
    Scope
    Time
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Aggregation => 'ReportAggregation',
    Columns => 'ArrayOfAdGroupPerformanceReportColumn',
    Filter => 'AdGroupPerformanceReportFilter',
    Scope => 'AccountThroughAdGroupReportScope',
    Time => 'ReportTime',
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

See L<http://msdn.microsoft.com/en-us/library/ee730328%28v=MSADS.70%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

Remark: Inherited methods are not listed.

=head2 new

Creates a new instance

=head2 Aggregation

Gets/sets Aggregation (ReportAggregation)

=head2 Columns

Gets/sets Columns (ArrayOfAdGroupPerformanceReportColumn)

=head2 Filter

Gets/sets Filter (AdGroupPerformanceReportFilter)

=head2 Scope

Gets/sets Scope (AccountThroughAdGroupReportScope)

=head2 Time

Gets/sets Time (ReportTime)

=cut

