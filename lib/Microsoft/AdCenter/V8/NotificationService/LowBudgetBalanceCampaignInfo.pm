package Microsoft::AdCenter::V8::NotificationService::LowBudgetBalanceCampaignInfo;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::V8::NotificationService::CampaignInfo/;

=head1 NAME

Microsoft::AdCenter::V8::NotificationService::LowBudgetBalanceCampaignInfo - Represents "LowBudgetBalanceCampaignInfo" in Microsoft AdCenter Notification Service.

=head1 INHERITANCE

Microsoft::AdCenter::V8::NotificationService::CampaignInfo

=cut

sub _type_name {
    return 'LowBudgetBalanceCampaignInfo';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/notifications/Entities';
}

our @_attributes = (qw/
    EstimatedBudgetBalance
    EstimatedImpressions
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    EstimatedBudgetBalance => 'double',
    EstimatedImpressions => 'int',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    EstimatedBudgetBalance => 0,
    EstimatedImpressions => 0,
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

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

Remark: Inherited methods are not listed.

=head2 new

Creates a new instance

=head2 EstimatedBudgetBalance

Gets/sets EstimatedBudgetBalance (double)

=head2 EstimatedImpressions

Gets/sets EstimatedImpressions (int)

=cut

