package Microsoft::AdCenter::V6::ReportingService::KeywordPerformanceReportFilter;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::V6::ReportingService::KeywordPerformanceReportFilter - Represents "KeywordPerformanceReportFilter" in Microsoft AdCenter Reporting Service.

=cut

sub _type_name {
    return 'KeywordPerformanceReportFilter';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    AdDistribution
    AdType
    BiddedMatchType
    Cashback
    DeliveredMatchType
    Keywords
    LanguageAndRegion
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AdDistribution => 'AdDistributionReportFilter',
    AdType => 'AdTypeReportFilter',
    BiddedMatchType => 'BiddedMatchTypeReportFilter',
    Cashback => 'CashbackReportFilter',
    DeliveredMatchType => 'DeliveredMatchTypeReportFilter',
    Keywords => 'ArrayOfstring',
    LanguageAndRegion => 'LanguageAndRegionReportFilter',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    AdDistribution => 0,
    AdType => 0,
    BiddedMatchType => 0,
    Cashback => 0,
    DeliveredMatchType => 0,
    Keywords => 0,
    LanguageAndRegion => 0,
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

=head2 AdDistribution

Gets/sets AdDistribution (AdDistributionReportFilter)

=head2 AdType

Gets/sets AdType (AdTypeReportFilter)

=head2 BiddedMatchType

Gets/sets BiddedMatchType (BiddedMatchTypeReportFilter)

=head2 Cashback

Gets/sets Cashback (CashbackReportFilter)

=head2 DeliveredMatchType

Gets/sets DeliveredMatchType (DeliveredMatchTypeReportFilter)

=head2 Keywords

Gets/sets Keywords (ArrayOfstring)

=head2 LanguageAndRegion

Gets/sets LanguageAndRegion (LanguageAndRegionReportFilter)

=cut

