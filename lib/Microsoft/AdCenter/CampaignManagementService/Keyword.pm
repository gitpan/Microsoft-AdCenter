package Microsoft::AdCenter::CampaignManagementService::Keyword;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::Keyword - Represents "Keyword" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'Keyword';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v7';
}

our @_attributes = (qw/
    BroadMatchBid
    CashBackInfo
    ContentMatchBid
    EditorialStatus
    ExactMatchBid
    Id
    NegativeKeywords
    OverridePriority
    Param1
    Param2
    Param3
    PhraseMatchBid
    Status
    Text
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    BroadMatchBid => 'Bid',
    CashBackInfo => 'CashBackInfo',
    ContentMatchBid => 'Bid',
    EditorialStatus => 'KeywordEditorialStatus',
    ExactMatchBid => 'Bid',
    Id => 'long',
    NegativeKeywords => 'ArrayOfstring',
    OverridePriority => 'OverridePriority',
    Param1 => 'string',
    Param2 => 'string',
    Param3 => 'string',
    PhraseMatchBid => 'Bid',
    Status => 'KeywordStatus',
    Text => 'string',
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

=head2 BroadMatchBid

Gets/sets BroadMatchBid (Bid)

=head2 CashBackInfo

Gets/sets CashBackInfo (CashBackInfo)

=head2 ContentMatchBid

Gets/sets ContentMatchBid (Bid)

=head2 EditorialStatus

Gets/sets EditorialStatus (KeywordEditorialStatus)

=head2 ExactMatchBid

Gets/sets ExactMatchBid (Bid)

=head2 Id

Gets/sets Id (long)

=head2 NegativeKeywords

Gets/sets NegativeKeywords (ArrayOfstring)

=head2 OverridePriority

Gets/sets OverridePriority (OverridePriority)

=head2 Param1

Gets/sets Param1 (string)

=head2 Param2

Gets/sets Param2 (string)

=head2 Param3

Gets/sets Param3 (string)

=head2 PhraseMatchBid

Gets/sets PhraseMatchBid (Bid)

=head2 Status

Gets/sets Status (KeywordStatus)

=head2 Text

Gets/sets Text (string)

=cut

