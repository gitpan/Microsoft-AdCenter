package Microsoft::AdCenter::ReportingService::SitePerformanceReportFilter;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::ReportingService::SitePerformanceReportFilter - Represents "SitePerformanceReportFilter" in Microsoft AdCenter Reporting Service.

=cut

sub _type_name {
    return 'SitePerformanceReportFilter';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    AdDistribution
    AdType
    DeliveredMatchType
    LanguageAndRegion
    SiteIds
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AdDistribution => 'AdDistributionReportFilter',
    AdType => 'AdTypeReportFilter',
    DeliveredMatchType => 'DeliveredMatchTypeReportFilter',
    LanguageAndRegion => 'LanguageAndRegionReportFilter',
    SiteIds => 'ArrayOflong',
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

    AdDistribution (AdDistributionReportFilter)
    AdType (AdTypeReportFilter)
    DeliveredMatchType (DeliveredMatchTypeReportFilter)
    LanguageAndRegion (LanguageAndRegionReportFilter)
    SiteIds (ArrayOflong)

=back

=cut

