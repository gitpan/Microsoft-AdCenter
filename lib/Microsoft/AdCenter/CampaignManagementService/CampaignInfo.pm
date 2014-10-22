package Microsoft::AdCenter::CampaignManagementService::CampaignInfo;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::CampaignInfo - Represents "CampaignInfo" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'CampaignInfo';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v7';
}

our @_attributes = (qw/
    BudgetType
    CashBackInfo
    ConversionTrackingEnabled
    ConversionTrackingScript
    DailyBudget
    DaylightSaving
    Description
    Id
    MonthlyBudget
    Name
    Status
    TimeZone
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    BudgetType => 'BudgetLimitType',
    CashBackInfo => 'CashBackInfo',
    ConversionTrackingEnabled => 'boolean',
    ConversionTrackingScript => 'string',
    DailyBudget => 'double',
    DaylightSaving => 'boolean',
    Description => 'string',
    Id => 'long',
    MonthlyBudget => 'double',
    Name => 'string',
    Status => 'CampaignStatus',
    TimeZone => 'string',
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

=head2 new

Creates a new instance

=head2 BudgetType

Gets/sets BudgetType (BudgetLimitType)

=head2 CashBackInfo

Gets/sets CashBackInfo (CashBackInfo)

=head2 ConversionTrackingEnabled

Gets/sets ConversionTrackingEnabled (boolean)

=head2 ConversionTrackingScript

Gets/sets ConversionTrackingScript (string)

=head2 DailyBudget

Gets/sets DailyBudget (double)

=head2 DaylightSaving

Gets/sets DaylightSaving (boolean)

=head2 Description

Gets/sets Description (string)

=head2 Id

Gets/sets Id (long)

=head2 MonthlyBudget

Gets/sets MonthlyBudget (double)

=head2 Name

Gets/sets Name (string)

=head2 Status

Gets/sets Status (CampaignStatus)

=head2 TimeZone

Gets/sets TimeZone (string)

=cut

