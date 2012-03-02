package Microsoft::AdCenter::V8::AdIntelligenceService;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V8::AdIntelligenceService - Service client for Microsoft AdCenter Ad Intelligence Service.

=head1 SYNOPSIS

    use Microsoft::AdCenter::V8::AdIntelligenceService;

    my $service_client = Microsoft::AdCenter::V8::AdIntelligenceService->new
        ->ApplicationToken("application token")
        ->CustomerAccountId("customer account id")
        ->CustomerId("customer id")
        ->DeveloperToken("developer token")
        ->Password("password")
        ->UserName("user name");

    my $response = $service_client->GetEstimatedBidByKeywordIds(
        KeywordIds => ...
        TargetPositionForAds => ...
    );

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for detailed documentation for this service.

=head1 METHODS

=head2 EndPoint

Changes the end point for this service client.

Default value: https://adcenterapi.microsoft.com/Api/Advertiser/V8/CampaignManagement/AdIntelligenceService.svc

=head2 ApplicationToken

Gets/sets ApplicationToken (string) in the request header

=head2 CustomerAccountId

Gets/sets CustomerAccountId (string) in the request header

=head2 CustomerId

Gets/sets CustomerId (string) in the request header

=head2 DeveloperToken

Gets/sets DeveloperToken (string) in the request header

=head2 Password

Gets/sets Password (string) in the request header

=head2 UserName

Gets/sets UserName (string) in the request header

=head2 TrackingId

Gets TrackingId (string) in the response header

=cut

use base qw/Microsoft::AdCenter::Service/;

sub _service_name {
    return 'AdIntelligenceService';
}

sub _service_version {
    return 'V8';
}

sub _class_name {
    return 'AdIntelligenceService';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v8';
}

sub _default_location {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/V8/CampaignManagement/AdIntelligenceService.svc';
}

sub _wsdl {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/V8/CampaignManagement/AdIntelligenceService.svc?wsdl';
}

our $_request_headers = [
    { name => 'ApplicationToken', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
    { name => 'CustomerAccountId', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
    { name => 'CustomerId', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
    { name => 'DeveloperToken', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
    { name => 'Password', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
    { name => 'UserName', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' }
];

our $_request_headers_expanded = {
    ApplicationToken => 'string',
    CustomerAccountId => 'string',
    CustomerId => 'string',
    DeveloperToken => 'string',
    Password => 'string',
    UserName => 'string'
};

sub _request_headers {
    return $_request_headers;
}

sub _request_headers_expanded {
    return $_request_headers_expanded;
}

our $_response_headers = [
    { name => 'TrackingId', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' }
];

our $_response_headers_expanded = {
    TrackingId => 'string'
};

sub _response_headers {
    return $_response_headers;
}

sub _response_headers_expanded {
    return $_response_headers_expanded;
}

=head2 GetEstimatedBidByKeywordIds

=over

=item Parameters:

    KeywordIds (ArrayOflong)
    TargetPositionForAds (TargetAdPosition)

=item Returns:

    GetEstimatedBidByKeywordIdsResponse

=back

=cut

sub GetEstimatedBidByKeywordIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetEstimatedBidByKeywordIds',
        request => {
            name => 'GetEstimatedBidByKeywordIdsRequest',
            parameters => [
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'TargetPositionForAds', type => 'TargetAdPosition', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetEstimatedBidByKeywordIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetEstimatedBidByKeywords

=over

=item Parameters:

    Keywords (ArrayOfstring)
    TargetPositionForAds (TargetAdPosition)
    Language (string)
    PublisherCountries (ArrayOfstring)
    Currency (Currency)
    MatchTypes (ArrayOfMatchType)

=item Returns:

    GetEstimatedBidByKeywordsResponse

=back

=cut

sub GetEstimatedBidByKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetEstimatedBidByKeywords',
        request => {
            name => 'GetEstimatedBidByKeywordsRequest',
            parameters => [
                { name => 'Keywords', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'TargetPositionForAds', type => 'TargetAdPosition', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Language', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'PublisherCountries', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Currency', type => 'Currency', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MatchTypes', type => 'ArrayOfMatchType', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetEstimatedBidByKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 GetEstimatedPositionByKeywordIds

=over

=item Parameters:

    KeywordIds (ArrayOflong)
    MaxBid (double)

=item Returns:

    GetEstimatedPositionByKeywordIdsResponse

=back

=cut

sub GetEstimatedPositionByKeywordIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetEstimatedPositionByKeywordIds',
        request => {
            name => 'GetEstimatedPositionByKeywordIdsRequest',
            parameters => [
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MaxBid', type => 'double', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetEstimatedPositionByKeywordIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetEstimatedPositionByKeywords

=over

=item Parameters:

    Keywords (ArrayOfstring)
    MaxBid (double)
    Language (string)
    PublisherCountries (ArrayOfstring)
    Currency (Currency)
    MatchTypes (ArrayOfMatchType)

=item Returns:

    GetEstimatedPositionByKeywordsResponse

=back

=cut

sub GetEstimatedPositionByKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetEstimatedPositionByKeywords',
        request => {
            name => 'GetEstimatedPositionByKeywordsRequest',
            parameters => [
                { name => 'Keywords', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MaxBid', type => 'double', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Language', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'PublisherCountries', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Currency', type => 'Currency', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MatchTypes', type => 'ArrayOfMatchType', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetEstimatedPositionByKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 GetHistoricalKeywordPerformance

=over

=item Parameters:

    Keywords (ArrayOfstring)
    TimeInterval (TimeInterval)
    TargetAdPosition (AdPosition)
    MatchType (MatchType)
    Language (string)
    PublisherCountries (ArrayOfstring)

=item Returns:

    GetHistoricalKeywordPerformanceResponse

=back

=cut

sub GetHistoricalKeywordPerformance {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetHistoricalKeywordPerformance',
        request => {
            name => 'GetHistoricalKeywordPerformanceRequest',
            parameters => [
                { name => 'Keywords', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'TimeInterval', type => 'TimeInterval', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'TargetAdPosition', type => 'AdPosition', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MatchType', type => 'MatchType', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Language', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'PublisherCountries', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetHistoricalKeywordPerformanceResponse'
        },
        parameters => \%args
    );
}

=head2 GetHistoricalSearchCount

=over

=item Parameters:

    Keywords (ArrayOfstring)
    Language (string)
    PublisherCountries (ArrayOfstring)
    StartMonthAndYear (MonthAndYear)
    EndMonthAndYear (MonthAndYear)

=item Returns:

    GetHistoricalSearchCountResponse

=back

=cut

sub GetHistoricalSearchCount {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetHistoricalSearchCount',
        request => {
            name => 'GetHistoricalSearchCountRequest',
            parameters => [
                { name => 'Keywords', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Language', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'PublisherCountries', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'StartMonthAndYear', type => 'MonthAndYear', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'EndMonthAndYear', type => 'MonthAndYear', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetHistoricalSearchCountResponse'
        },
        parameters => \%args
    );
}

=head2 GetPublisherKeywordPerformance

=over

=item Parameters:

    Keywords (ArrayOfstring)
    TimeInterval (TimeInterval)

=item Returns:

    GetPublisherKeywordPerformanceResponse

=back

=cut

sub GetPublisherKeywordPerformance {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetPublisherKeywordPerformance',
        request => {
            name => 'GetPublisherKeywordPerformanceRequest',
            parameters => [
                { name => 'Keywords', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'TimeInterval', type => 'TimeInterval', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'GetPublisherKeywordPerformanceResponse'
        },
        parameters => \%args
    );
}

=head2 SuggestKeywordsForUrl

=over

=item Parameters:

    Url (string)
    Language (string)
    MaxKeywords (int)
    MinConfidenceScore (double)

=item Returns:

    SuggestKeywordsForUrlResponse

=back

=cut

sub SuggestKeywordsForUrl {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SuggestKeywordsForUrl',
        request => {
            name => 'SuggestKeywordsForUrlRequest',
            parameters => [
                { name => 'Url', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Language', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MaxKeywords', type => 'int', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MinConfidenceScore', type => 'double', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'SuggestKeywordsForUrlResponse'
        },
        parameters => \%args
    );
}

=head2 SuggestKeywordsFromExistingKeywords

=over

=item Parameters:

    Keywords (ArrayOfstring)
    Language (string)
    PublisherCountries (ArrayOfstring)
    MaxSuggestionsPerKeyword (int)

=item Returns:

    SuggestKeywordsFromExistingKeywordsResponse

=back

=cut

sub SuggestKeywordsFromExistingKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SuggestKeywordsFromExistingKeywords',
        request => {
            name => 'SuggestKeywordsFromExistingKeywordsRequest',
            parameters => [
                { name => 'Keywords', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'Language', type => 'string', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'PublisherCountries', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v8' },
                { name => 'MaxSuggestionsPerKeyword', type => 'int', namespace => 'https://adcenter.microsoft.com/v8' }
            ]
        },
        response => {
            name => 'SuggestKeywordsFromExistingKeywordsResponse'
        },
        parameters => \%args
    );
}

our %_simple_types = (
    AdPosition => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
    Currency => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
    MatchType => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
    Scale => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
    TargetAdPosition => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
    TimeInterval => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
    char => 'http://schemas.microsoft.com/2003/10/Serialization/',
    duration => 'http://schemas.microsoft.com/2003/10/Serialization/',
    guid => 'http://schemas.microsoft.com/2003/10/Serialization/',
);

sub _simple_types {
    return %_simple_types;
}

our @_complex_types = (qw/
    AdApiError
    AdApiFaultDetail
    ApiFaultDetail
    ApplicationFault
    BatchError
    EstimatedBidAndTraffic
    EstimatedPositionAndTraffic
    GetEstimatedBidByKeywordIdsResponse
    GetEstimatedBidByKeywordsResponse
    GetEstimatedPositionByKeywordIdsResponse
    GetEstimatedPositionByKeywordsResponse
    GetHistoricalKeywordPerformanceResponse
    GetHistoricalSearchCountResponse
    GetPublisherKeywordPerformanceResponse
    HistoricalSearchCount
    KeywordAndConfidence
    KeywordEstimatedBid
    KeywordEstimatedPosition
    KeywordHistoricalPerformance
    KeywordIdEstimatedBid
    KeywordIdEstimatedPosition
    KeywordKPI
    KeywordPerformance
    KeywordSearchCount
    KeywordSuggestion
    MonthAndYear
    OperationError
    SuggestKeywordsForUrlResponse
    SuggestKeywordsFromExistingKeywordsResponse
/);

sub _complex_types {
    return @_complex_types;
}

our %_array_types = (
    ArrayOfAdApiError => {
        namespace_uri => 'https://adapi.microsoft.com',
        element_name => 'AdApiError',
        element_type => 'AdApiError'
    },
    ArrayOfBatchError => {
        namespace_uri => 'https://adcenter.microsoft.com/v8',
        element_name => 'BatchError',
        element_type => 'BatchError'
    },
    ArrayOfEstimatedBidAndTraffic => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'EstimatedBidAndTraffic',
        element_type => 'EstimatedBidAndTraffic'
    },
    ArrayOfEstimatedPositionAndTraffic => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'EstimatedPositionAndTraffic',
        element_type => 'EstimatedPositionAndTraffic'
    },
    ArrayOfHistoricalSearchCount => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'HistoricalSearchCount',
        element_type => 'HistoricalSearchCount'
    },
    ArrayOfKeywordAndConfidence => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordAndConfidence',
        element_type => 'KeywordAndConfidence'
    },
    ArrayOfKeywordEstimatedBid => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordEstimatedBid',
        element_type => 'KeywordEstimatedBid'
    },
    ArrayOfKeywordEstimatedPosition => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordEstimatedPosition',
        element_type => 'KeywordEstimatedPosition'
    },
    ArrayOfKeywordHistoricalPerformance => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordHistoricalPerformance',
        element_type => 'KeywordHistoricalPerformance'
    },
    ArrayOfKeywordIdEstimatedBid => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordIdEstimatedBid',
        element_type => 'KeywordIdEstimatedBid'
    },
    ArrayOfKeywordIdEstimatedPosition => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordIdEstimatedPosition',
        element_type => 'KeywordIdEstimatedPosition'
    },
    ArrayOfKeywordKPI => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordKPI',
        element_type => 'KeywordKPI'
    },
    ArrayOfKeywordPerformance => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordPerformance',
        element_type => 'KeywordPerformance'
    },
    ArrayOfKeywordSearchCount => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordSearchCount',
        element_type => 'KeywordSearchCount'
    },
    ArrayOfKeywordSuggestion => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'KeywordSuggestion',
        element_type => 'KeywordSuggestion'
    },
    ArrayOfMatchType => {
        namespace_uri => 'http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts',
        element_name => 'MatchType',
        element_type => 'MatchType'
    },
    ArrayOfOperationError => {
        namespace_uri => 'https://adcenter.microsoft.com/v8',
        element_name => 'OperationError',
        element_type => 'OperationError'
    },
    ArrayOflong => {
        namespace_uri => 'http://schemas.microsoft.com/2003/10/Serialization/Arrays',
        element_name => 'long',
        element_type => 'long'
    },
    ArrayOfstring => {
        namespace_uri => 'http://schemas.microsoft.com/2003/10/Serialization/Arrays',
        element_name => 'string',
        element_type => 'string'
    },
);

sub _array_types {
    return %_array_types;
}

__PACKAGE__->mk_accessors(qw/
    ApplicationToken
    CustomerAccountId
    CustomerId
    DeveloperToken
    Password
    UserName
    TrackingId
/);

1;
