package Microsoft::AdCenter::NotificationManagementService::EditorialRejectionNotification;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::NotificationManagementService::Notification/;

=head1 NAME

Microsoft::AdCenter::NotificationManagementService::EditorialRejectionNotification - Represents "EditorialRejectionNotification" in Microsoft AdCenter Notification Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::NotificationManagementService::Notification

=cut

sub _type_name {
    return 'EditorialRejectionNotification';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    AccountId
    AccountName
    AccountNumber
    AdDescription
    AdId
    AdTitle
    CampaignId
    CampaignName
    CustomerName
    DestinationURL
    DisplayURL
    KeywordsAccepted
    KeywordsPending
    KeywordsRejected
    OrderId
    OrderName
    Top1Keyword
    Top1KeywordReason
    Top2Keyword
    Top2KeywordReason
    Top3Keyword
    Top3KeywordReason
    Top4Keyword
    Top4KeywordReason
    Top5Keyword
    Top5KeywordReason
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AccountId => 'int',
    AccountName => 'string',
    AccountNumber => 'string',
    AdDescription => 'string',
    AdId => 'int',
    AdTitle => 'string',
    CampaignId => 'int',
    CampaignName => 'string',
    CustomerName => 'string',
    DestinationURL => 'string',
    DisplayURL => 'string',
    KeywordsAccepted => 'int',
    KeywordsPending => 'int',
    KeywordsRejected => 'int',
    OrderId => 'int',
    OrderName => 'string',
    Top1Keyword => 'string',
    Top1KeywordReason => 'string',
    Top2Keyword => 'string',
    Top2KeywordReason => 'string',
    Top3Keyword => 'string',
    Top3KeywordReason => 'string',
    Top4Keyword => 'string',
    Top4KeywordReason => 'string',
    Top5Keyword => 'string',
    Top5KeywordReason => 'string',
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

    AccountId (int)
    AccountName (string)
    AccountNumber (string)
    AdDescription (string)
    AdId (int)
    AdTitle (string)
    CampaignId (int)
    CampaignName (string)
    CustomerName (string)
    DestinationURL (string)
    DisplayURL (string)
    KeywordsAccepted (int)
    KeywordsPending (int)
    KeywordsRejected (int)
    OrderId (int)
    OrderName (string)
    Top1Keyword (string)
    Top1KeywordReason (string)
    Top2Keyword (string)
    Top2KeywordReason (string)
    Top3Keyword (string)
    Top3KeywordReason (string)
    Top4Keyword (string)
    Top4KeywordReason (string)
    Top5Keyword (string)
    Top5KeywordReason (string)

    Inherited attributes are not listed.

=back

=cut

