package Microsoft::AdCenter::CampaignManagementService;

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService - Service client for Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

    use Microsoft::AdCenter::CampaignManagementService;

    my $service_client = Microsoft::AdCenter::CampaignManagementService->new
        ->ApplicationToken("application token")
        ->CustomerAccountId("customer account id")
        ->CustomerId("customer id")
        ->DeveloperToken("developer token")
        ->Password("password")
        ->UserName("user name");

    my $response = $service_client->AddAdGroups(
        CampaignId => ...
        AdGroups => ...
    );

See L<http://msdn.microsoft.com/en-US/library/ee730327%28v=MSADS.60%29.aspx> for detailed documentation for this service.

=head1 METHODS

=head2 EndPoint

Changes the end point for this service client.

Default value:
https://adcenterapi.microsoft.com/Api/Advertiser/v6/CampaignManagement/CampaignManagementService.svc

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
    return 'CampaignManagementService';
}

sub _class_name {
    return 'CampaignManagementService';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

sub _default_location {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/v6/CampaignManagement/CampaignManagementService.svc';
}

sub _wsdl {
    return 'https://adcenterapi.microsoft.com/Api/Advertiser/v6/CampaignManagement/CampaignManagementService.svc?wsdl';
}

our $_request_headers = [
    { name => 'ApplicationToken', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
    { name => 'CustomerAccountId', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
    { name => 'CustomerId', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
    { name => 'DeveloperToken', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
    { name => 'Password', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
    { name => 'UserName', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' }
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
    { name => 'TrackingId', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' }
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

=head2 AddAdGroups

Parameters:
  CampaignId (long)
  AdGroups (ArrayOfAdGroup)

Returns:
  AddAdGroupsResponse

=cut

sub AddAdGroups {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddAdGroups',
        request => {
            name => 'AddAdGroupsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroups', type => 'ArrayOfAdGroup', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddAdGroupsResponse'
        },
        parameters => \%args
    );
}

=head2 AddAds

Parameters:
  AdGroupId (long)
  Ads (ArrayOfAd)

Returns:
  AddAdsResponse

=cut

sub AddAds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddAds',
        request => {
            name => 'AddAdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Ads', type => 'ArrayOfAd', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddAdsResponse'
        },
        parameters => \%args
    );
}

=head2 AddBehavioralBids

Parameters:
  AdGroupId (long)
  BehavioralBids (ArrayOfBehavioralBid)

Returns:
  AddBehavioralBidsResponse

=cut

sub AddBehavioralBids {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddBehavioralBids',
        request => {
            name => 'AddBehavioralBidsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'BehavioralBids', type => 'ArrayOfBehavioralBid', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddBehavioralBidsResponse'
        },
        parameters => \%args
    );
}

=head2 AddBusinesses

Parameters:
  Businesses (ArrayOfBusiness)

Returns:
  AddBusinessesResponse

=cut

sub AddBusinesses {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddBusinesses',
        request => {
            name => 'AddBusinessesRequest',
            parameters => [
                { name => 'Businesses', type => 'ArrayOfBusiness', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddBusinessesResponse'
        },
        parameters => \%args
    );
}

=head2 AddCampaigns

Parameters:
  AccountId (long)
  Campaigns (ArrayOfCampaign)

Returns:
  AddCampaignsResponse

=cut

sub AddCampaigns {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddCampaigns',
        request => {
            name => 'AddCampaignsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Campaigns', type => 'ArrayOfCampaign', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddCampaignsResponse'
        },
        parameters => \%args
    );
}

=head2 AddKeywords

Parameters:
  AdGroupId (long)
  Keywords (ArrayOfKeyword)

Returns:
  AddKeywordsResponse

=cut

sub AddKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddKeywords',
        request => {
            name => 'AddKeywordsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Keywords', type => 'ArrayOfKeyword', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 AddSegments

Parameters:
  Segments (ArrayOfSegment)

Returns:
  AddSegmentsResponse

=cut

sub AddSegments {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddSegments',
        request => {
            name => 'AddSegmentsRequest',
            parameters => [
                { name => 'Segments', type => 'ArrayOfSegment', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddSegmentsResponse'
        },
        parameters => \%args
    );
}

=head2 AddSitePlacements

Parameters:
  AdGroupId (long)
  SitePlacements (ArrayOfSitePlacement)

Returns:
  AddSitePlacementsResponse

=cut

sub AddSitePlacements {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddSitePlacements',
        request => {
            name => 'AddSitePlacementsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'SitePlacements', type => 'ArrayOfSitePlacement', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddSitePlacementsResponse'
        },
        parameters => \%args
    );
}

=head2 AddTarget

Parameters:
  AdGroupId (long)
  Target (Target)

Returns:
  AddTargetResponse

=cut

sub AddTarget {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddTarget',
        request => {
            name => 'AddTargetRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Target', type => 'Target', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddTargetResponse'
        },
        parameters => \%args
    );
}

=head2 AddTargetsToLibrary

Parameters:
  Targets (ArrayOfTarget)

Returns:
  AddTargetsToLibraryResponse

=cut

sub AddTargetsToLibrary {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'AddTargetsToLibrary',
        request => {
            name => 'AddTargetsToLibraryRequest',
            parameters => [
                { name => 'Targets', type => 'ArrayOfTarget', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'AddTargetsToLibraryResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteAdGroups

Parameters:
  CampaignId (long)
  AdGroupIds (ArrayOflong)

Returns:
  DeleteAdGroupsResponse

=cut

sub DeleteAdGroups {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteAdGroups',
        request => {
            name => 'DeleteAdGroupsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroupIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteAdGroupsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteAds

Parameters:
  AdGroupId (long)
  AdIds (ArrayOflong)

Returns:
  DeleteAdsResponse

=cut

sub DeleteAds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteAds',
        request => {
            name => 'DeleteAdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteAdsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteBehavioralBids

Parameters:
  AdGroupId (long)
  BehavioralBidIds (ArrayOflong)

Returns:
  DeleteBehavioralBidsResponse

=cut

sub DeleteBehavioralBids {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteBehavioralBids',
        request => {
            name => 'DeleteBehavioralBidsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'BehavioralBidIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteBehavioralBidsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteBusinesses

Parameters:
  BusinessIds (ArrayOflong)

Returns:
  DeleteBusinessesResponse

=cut

sub DeleteBusinesses {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteBusinesses',
        request => {
            name => 'DeleteBusinessesRequest',
            parameters => [
                { name => 'BusinessIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteBusinessesResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteCampaigns

Parameters:
  AccountId (long)
  CampaignIds (ArrayOflong)

Returns:
  DeleteCampaignsResponse

=cut

sub DeleteCampaigns {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteCampaigns',
        request => {
            name => 'DeleteCampaignsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'CampaignIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteCampaignsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteKeywords

Parameters:
  AdGroupId (long)
  KeywordIds (ArrayOflong)

Returns:
  DeleteKeywordsResponse

=cut

sub DeleteKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteKeywords',
        request => {
            name => 'DeleteKeywordsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteSegments

Parameters:
  SegmentIds (ArrayOflong)

Returns:
  DeleteSegmentsResponse

=cut

sub DeleteSegments {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteSegments',
        request => {
            name => 'DeleteSegmentsRequest',
            parameters => [
                { name => 'SegmentIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteSegmentsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteSitePlacements

Parameters:
  AdGroupId (long)
  SitePlacementIds (ArrayOflong)

Returns:
  DeleteSitePlacementsResponse

=cut

sub DeleteSitePlacements {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteSitePlacements',
        request => {
            name => 'DeleteSitePlacementsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'SitePlacementIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteSitePlacementsResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteTarget

Parameters:
  AdGroupId (long)

Returns:
  DeleteTargetResponse

=cut

sub DeleteTarget {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteTarget',
        request => {
            name => 'DeleteTargetRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteTargetResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteTargetFromAdGroup

Parameters:
  AdGroupId (long)

Returns:
  DeleteTargetFromAdGroupResponse

=cut

sub DeleteTargetFromAdGroup {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteTargetFromAdGroup',
        request => {
            name => 'DeleteTargetFromAdGroupRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteTargetFromAdGroupResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteTargetFromCampaign

Parameters:
  CampaignId (long)

Returns:
  DeleteTargetFromCampaignResponse

=cut

sub DeleteTargetFromCampaign {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteTargetFromCampaign',
        request => {
            name => 'DeleteTargetFromCampaignRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteTargetFromCampaignResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteTargetsFromLibrary

Parameters:
  TargetIds (ArrayOflong)

Returns:
  DeleteTargetsFromLibraryResponse

=cut

sub DeleteTargetsFromLibrary {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteTargetsFromLibrary',
        request => {
            name => 'DeleteTargetsFromLibraryRequest',
            parameters => [
                { name => 'TargetIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteTargetsFromLibraryResponse'
        },
        parameters => \%args
    );
}

=head2 DeleteUsersFromSegment

Parameters:
  UserHash (ArrayOfbase64Binary)

Returns:
  DeleteUsersFromSegmentResponse

=cut

sub DeleteUsersFromSegment {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'DeleteUsersFromSegment',
        request => {
            name => 'DeleteUsersFromSegmentRequest',
            parameters => [
                { name => 'UserHash', type => 'ArrayOfbase64Binary', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'DeleteUsersFromSegmentResponse'
        },
        parameters => \%args
    );
}

=head2 GetAdGroupsByCampaignId

Parameters:
  CampaignId (long)

Returns:
  GetAdGroupsByCampaignIdResponse

=cut

sub GetAdGroupsByCampaignId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAdGroupsByCampaignId',
        request => {
            name => 'GetAdGroupsByCampaignIdRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetAdGroupsByCampaignIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetAdGroupsByIds

Parameters:
  CampaignId (long)
  AdGroupIds (ArrayOflong)

Returns:
  GetAdGroupsByIdsResponse

=cut

sub GetAdGroupsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAdGroupsByIds',
        request => {
            name => 'GetAdGroupsByIdsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroupIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetAdGroupsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetAdGroupsInfoByCampaignId

Parameters:
  CampaignId (long)

Returns:
  GetAdGroupsInfoByCampaignIdResponse

=cut

sub GetAdGroupsInfoByCampaignId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAdGroupsInfoByCampaignId',
        request => {
            name => 'GetAdGroupsInfoByCampaignIdRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetAdGroupsInfoByCampaignIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetAdsByAdGroupId

Parameters:
  AdGroupId (long)

Returns:
  GetAdsByAdGroupIdResponse

=cut

sub GetAdsByAdGroupId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAdsByAdGroupId',
        request => {
            name => 'GetAdsByAdGroupIdRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetAdsByAdGroupIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetAdsByEditorialStatus

Parameters:
  AdGroupId (long)
  EditorialStatus (AdEditorialStatus)

Returns:
  GetAdsByEditorialStatusResponse

=cut

sub GetAdsByEditorialStatus {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAdsByEditorialStatus',
        request => {
            name => 'GetAdsByEditorialStatusRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'EditorialStatus', type => 'AdEditorialStatus', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetAdsByEditorialStatusResponse'
        },
        parameters => \%args
    );
}

=head2 GetAdsByIds

Parameters:
  AdGroupId (long)
  AdIds (ArrayOflong)

Returns:
  GetAdsByIdsResponse

=cut

sub GetAdsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetAdsByIds',
        request => {
            name => 'GetAdsByIdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetAdsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetBehavioralBidsByAdGroupId

Parameters:
  AdGroupId (long)

Returns:
  GetBehavioralBidsByAdGroupIdResponse

=cut

sub GetBehavioralBidsByAdGroupId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetBehavioralBidsByAdGroupId',
        request => {
            name => 'GetBehavioralBidsByAdGroupIdRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetBehavioralBidsByAdGroupIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetBehavioralBidsByIds

Parameters:
  AdGroupId (long)
  BehavioralBidIds (ArrayOflong)

Returns:
  GetBehavioralBidsByIdsResponse

=cut

sub GetBehavioralBidsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetBehavioralBidsByIds',
        request => {
            name => 'GetBehavioralBidsByIdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'BehavioralBidIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetBehavioralBidsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetBusinessesByIds

Parameters:
  BusinessIds (ArrayOflong)

Returns:
  GetBusinessesByIdsResponse

=cut

sub GetBusinessesByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetBusinessesByIds',
        request => {
            name => 'GetBusinessesByIdsRequest',
            parameters => [
                { name => 'BusinessIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetBusinessesByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetBusinessesInfo

Parameters:

Returns:
  GetBusinessesInfoResponse

=cut

sub GetBusinessesInfo {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetBusinessesInfo',
        request => {
            name => 'GetBusinessesInfoRequest',
            parameters => [
            ]
        },
        response => {
            name => 'GetBusinessesInfoResponse'
        },
        parameters => \%args
    );
}

=head2 GetCampaignsByAccountId

Parameters:
  AccountId (long)

Returns:
  GetCampaignsByAccountIdResponse

=cut

sub GetCampaignsByAccountId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetCampaignsByAccountId',
        request => {
            name => 'GetCampaignsByAccountIdRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetCampaignsByAccountIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetCampaignsByIds

Parameters:
  AccountId (long)
  CampaignIds (ArrayOflong)

Returns:
  GetCampaignsByIdsResponse

=cut

sub GetCampaignsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetCampaignsByIds',
        request => {
            name => 'GetCampaignsByIdsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'CampaignIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetCampaignsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetCampaignsInfoByAccountId

Parameters:
  AccountId (long)

Returns:
  GetCampaignsInfoByAccountIdResponse

=cut

sub GetCampaignsInfoByAccountId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetCampaignsInfoByAccountId',
        request => {
            name => 'GetCampaignsInfoByAccountIdRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetCampaignsInfoByAccountIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetCustomSegments

Parameters:

Returns:
  GetCustomSegmentsResponse

=cut

sub GetCustomSegments {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetCustomSegments',
        request => {
            name => 'GetCustomSegmentsRequest',
            parameters => [
            ]
        },
        response => {
            name => 'GetCustomSegmentsResponse'
        },
        parameters => \%args
    );
}

=head2 GetKeywordEstimatesByBids

Parameters:
  AccountId (long)
  LanguageAndRegion (string)
  Currency (string)
  KeywordBids (ArrayOfKeywordBid)
  PricingModel (PricingModel)

Returns:
  GetKeywordEstimatesByBidsResponse

=cut

sub GetKeywordEstimatesByBids {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetKeywordEstimatesByBids',
        request => {
            name => 'GetKeywordEstimatesByBidsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'LanguageAndRegion', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Currency', type => 'string', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'KeywordBids', type => 'ArrayOfKeywordBid', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'PricingModel', type => 'PricingModel', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetKeywordEstimatesByBidsResponse'
        },
        parameters => \%args
    );
}

=head2 GetKeywordQualityScoresByIds

Parameters:
  AdGroupId (long)
  KeywordIds (ArrayOflong)

Returns:
  GetKeywordQualityScoresByIdsResponse

=cut

sub GetKeywordQualityScoresByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetKeywordQualityScoresByIds',
        request => {
            name => 'GetKeywordQualityScoresByIdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetKeywordQualityScoresByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetKeywordsByAdGroupId

Parameters:
  AdGroupId (long)

Returns:
  GetKeywordsByAdGroupIdResponse

=cut

sub GetKeywordsByAdGroupId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetKeywordsByAdGroupId',
        request => {
            name => 'GetKeywordsByAdGroupIdRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetKeywordsByAdGroupIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetKeywordsByEditorialStatus

Parameters:
  AdGroupId (long)
  EditorialStatus (KeywordEditorialStatus)

Returns:
  GetKeywordsByEditorialStatusResponse

=cut

sub GetKeywordsByEditorialStatus {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetKeywordsByEditorialStatus',
        request => {
            name => 'GetKeywordsByEditorialStatusRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'EditorialStatus', type => 'KeywordEditorialStatus', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetKeywordsByEditorialStatusResponse'
        },
        parameters => \%args
    );
}

=head2 GetKeywordsByIds

Parameters:
  AdGroupId (long)
  KeywordIds (ArrayOflong)

Returns:
  GetKeywordsByIdsResponse

=cut

sub GetKeywordsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetKeywordsByIds',
        request => {
            name => 'GetKeywordsByIdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetKeywordsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetNegativeKeywordsByAdGroupIds

Parameters:
  CampaignId (long)
  AdGroupIds (ArrayOflong)

Returns:
  GetNegativeKeywordsByAdGroupIdsResponse

=cut

sub GetNegativeKeywordsByAdGroupIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetNegativeKeywordsByAdGroupIds',
        request => {
            name => 'GetNegativeKeywordsByAdGroupIdsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroupIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetNegativeKeywordsByAdGroupIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetNegativeKeywordsByCampaignIds

Parameters:
  AccountId (long)
  CampaignIds (ArrayOflong)

Returns:
  GetNegativeKeywordsByCampaignIdsResponse

=cut

sub GetNegativeKeywordsByCampaignIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetNegativeKeywordsByCampaignIds',
        request => {
            name => 'GetNegativeKeywordsByCampaignIdsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'CampaignIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetNegativeKeywordsByCampaignIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetPlacementDetailsForUrls

Parameters:
  Urls (ArrayOfstring)

Returns:
  GetPlacementDetailsForUrlsResponse

=cut

sub GetPlacementDetailsForUrls {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetPlacementDetailsForUrls',
        request => {
            name => 'GetPlacementDetailsForUrlsRequest',
            parameters => [
                { name => 'Urls', type => 'ArrayOfstring', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetPlacementDetailsForUrlsResponse'
        },
        parameters => \%args
    );
}

=head2 GetSegments

Parameters:

Returns:
  GetSegmentsResponse

=cut

sub GetSegments {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetSegments',
        request => {
            name => 'GetSegmentsRequest',
            parameters => [
            ]
        },
        response => {
            name => 'GetSegmentsResponse'
        },
        parameters => \%args
    );
}

=head2 GetSegmentsByIds

Parameters:
  SegmentIds (ArrayOflong)

Returns:
  GetSegmentsByIdsResponse

=cut

sub GetSegmentsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetSegmentsByIds',
        request => {
            name => 'GetSegmentsByIdsRequest',
            parameters => [
                { name => 'SegmentIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetSegmentsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetSitePlacementsByAdGroupId

Parameters:
  AdGroupId (long)

Returns:
  GetSitePlacementsByAdGroupIdResponse

=cut

sub GetSitePlacementsByAdGroupId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetSitePlacementsByAdGroupId',
        request => {
            name => 'GetSitePlacementsByAdGroupIdRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetSitePlacementsByAdGroupIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetSitePlacementsByIds

Parameters:
  AdGroupId (long)
  SitePlacementIds (ArrayOflong)

Returns:
  GetSitePlacementsByIdsResponse

=cut

sub GetSitePlacementsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetSitePlacementsByIds',
        request => {
            name => 'GetSitePlacementsByIdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'SitePlacementIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetSitePlacementsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetTargetByAdGroupId

Parameters:
  AdGroupId (long)

Returns:
  GetTargetByAdGroupIdResponse

=cut

sub GetTargetByAdGroupId {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetTargetByAdGroupId',
        request => {
            name => 'GetTargetByAdGroupIdRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetTargetByAdGroupIdResponse'
        },
        parameters => \%args
    );
}

=head2 GetTargetsByAdGroupIds

Parameters:
  AdGroupIds (ArrayOflong)

Returns:
  GetTargetsByAdGroupIdsResponse

=cut

sub GetTargetsByAdGroupIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetTargetsByAdGroupIds',
        request => {
            name => 'GetTargetsByAdGroupIdsRequest',
            parameters => [
                { name => 'AdGroupIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetTargetsByAdGroupIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetTargetsByCampaignIds

Parameters:
  CampaignIds (ArrayOflong)

Returns:
  GetTargetsByCampaignIdsResponse

=cut

sub GetTargetsByCampaignIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetTargetsByCampaignIds',
        request => {
            name => 'GetTargetsByCampaignIdsRequest',
            parameters => [
                { name => 'CampaignIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetTargetsByCampaignIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetTargetsByIds

Parameters:
  TargetIds (ArrayOflong)

Returns:
  GetTargetsByIdsResponse

=cut

sub GetTargetsByIds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetTargetsByIds',
        request => {
            name => 'GetTargetsByIdsRequest',
            parameters => [
                { name => 'TargetIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'GetTargetsByIdsResponse'
        },
        parameters => \%args
    );
}

=head2 GetTargetsInfoFromLibrary

Parameters:

Returns:
  GetTargetsInfoFromLibraryResponse

=cut

sub GetTargetsInfoFromLibrary {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'GetTargetsInfoFromLibrary',
        request => {
            name => 'GetTargetsInfoFromLibraryRequest',
            parameters => [
            ]
        },
        response => {
            name => 'GetTargetsInfoFromLibraryResponse'
        },
        parameters => \%args
    );
}

=head2 PauseAdGroups

Parameters:
  CampaignId (long)
  AdGroupIds (ArrayOflong)

Returns:
  PauseAdGroupsResponse

=cut

sub PauseAdGroups {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'PauseAdGroups',
        request => {
            name => 'PauseAdGroupsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroupIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'PauseAdGroupsResponse'
        },
        parameters => \%args
    );
}

=head2 PauseAds

Parameters:
  AdGroupId (long)
  AdIds (ArrayOflong)

Returns:
  PauseAdsResponse

=cut

sub PauseAds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'PauseAds',
        request => {
            name => 'PauseAdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'PauseAdsResponse'
        },
        parameters => \%args
    );
}

=head2 PauseBehavioralBids

Parameters:
  AdGroupId (long)
  BehavioralBidIds (ArrayOflong)

Returns:
  PauseBehavioralBidsResponse

=cut

sub PauseBehavioralBids {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'PauseBehavioralBids',
        request => {
            name => 'PauseBehavioralBidsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'BehavioralBidIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'PauseBehavioralBidsResponse'
        },
        parameters => \%args
    );
}

=head2 PauseCampaigns

Parameters:
  AccountId (long)
  CampaignIds (ArrayOflong)

Returns:
  PauseCampaignsResponse

=cut

sub PauseCampaigns {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'PauseCampaigns',
        request => {
            name => 'PauseCampaignsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'CampaignIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'PauseCampaignsResponse'
        },
        parameters => \%args
    );
}

=head2 PauseKeywords

Parameters:
  AdGroupId (long)
  KeywordIds (ArrayOflong)

Returns:
  PauseKeywordsResponse

=cut

sub PauseKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'PauseKeywords',
        request => {
            name => 'PauseKeywordsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'PauseKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 PauseSitePlacements

Parameters:
  AdGroupId (long)
  SitePlacementIds (ArrayOflong)

Returns:
  PauseSitePlacementsResponse

=cut

sub PauseSitePlacements {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'PauseSitePlacements',
        request => {
            name => 'PauseSitePlacementsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'SitePlacementIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'PauseSitePlacementsResponse'
        },
        parameters => \%args
    );
}

=head2 ResumeAdGroups

Parameters:
  CampaignId (long)
  AdGroupIds (ArrayOflong)

Returns:
  ResumeAdGroupsResponse

=cut

sub ResumeAdGroups {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'ResumeAdGroups',
        request => {
            name => 'ResumeAdGroupsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroupIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'ResumeAdGroupsResponse'
        },
        parameters => \%args
    );
}

=head2 ResumeAds

Parameters:
  AdGroupId (long)
  AdIds (ArrayOflong)

Returns:
  ResumeAdsResponse

=cut

sub ResumeAds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'ResumeAds',
        request => {
            name => 'ResumeAdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'ResumeAdsResponse'
        },
        parameters => \%args
    );
}

=head2 ResumeBehavioralBids

Parameters:
  AdGroupId (long)
  BehavioralBidIds (ArrayOflong)

Returns:
  ResumeBehavioralBidsResponse

=cut

sub ResumeBehavioralBids {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'ResumeBehavioralBids',
        request => {
            name => 'ResumeBehavioralBidsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'BehavioralBidIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'ResumeBehavioralBidsResponse'
        },
        parameters => \%args
    );
}

=head2 ResumeCampaigns

Parameters:
  AccountId (long)
  CampaignIds (ArrayOflong)

Returns:
  ResumeCampaignsResponse

=cut

sub ResumeCampaigns {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'ResumeCampaigns',
        request => {
            name => 'ResumeCampaignsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'CampaignIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'ResumeCampaignsResponse'
        },
        parameters => \%args
    );
}

=head2 ResumeKeywords

Parameters:
  AdGroupId (long)
  KeywordIds (ArrayOflong)

Returns:
  ResumeKeywordsResponse

=cut

sub ResumeKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'ResumeKeywords',
        request => {
            name => 'ResumeKeywordsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'KeywordIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'ResumeKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 ResumeSitePlacements

Parameters:
  AdGroupId (long)
  SitePlacementIds (ArrayOflong)

Returns:
  ResumeSitePlacementsResponse

=cut

sub ResumeSitePlacements {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'ResumeSitePlacements',
        request => {
            name => 'ResumeSitePlacementsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'SitePlacementIds', type => 'ArrayOflong', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'ResumeSitePlacementsResponse'
        },
        parameters => \%args
    );
}

=head2 SetNegativeKeywordsToAdGroups

Parameters:
  CampaignId (long)
  AdGroupNegativeKeywords (ArrayOfAdGroupNegativeKeywords)

Returns:
  SetNegativeKeywordsToAdGroupsResponse

=cut

sub SetNegativeKeywordsToAdGroups {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SetNegativeKeywordsToAdGroups',
        request => {
            name => 'SetNegativeKeywordsToAdGroupsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroupNegativeKeywords', type => 'ArrayOfAdGroupNegativeKeywords', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'SetNegativeKeywordsToAdGroupsResponse'
        },
        parameters => \%args
    );
}

=head2 SetNegativeKeywordsToCampaigns

Parameters:
  AccountId (long)
  CampaignNegativeKeywords (ArrayOfCampaignNegativeKeywords)

Returns:
  SetNegativeKeywordsToCampaignsResponse

=cut

sub SetNegativeKeywordsToCampaigns {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SetNegativeKeywordsToCampaigns',
        request => {
            name => 'SetNegativeKeywordsToCampaignsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'CampaignNegativeKeywords', type => 'ArrayOfCampaignNegativeKeywords', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'SetNegativeKeywordsToCampaignsResponse'
        },
        parameters => \%args
    );
}

=head2 SetTargetToAdGroup

Parameters:
  AdGroupId (long)
  TargetId (long)

Returns:
  SetTargetToAdGroupResponse

=cut

sub SetTargetToAdGroup {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SetTargetToAdGroup',
        request => {
            name => 'SetTargetToAdGroupRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'TargetId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'SetTargetToAdGroupResponse'
        },
        parameters => \%args
    );
}

=head2 SetTargetToCampaign

Parameters:
  CampaignId (long)
  TargetId (long)

Returns:
  SetTargetToCampaignResponse

=cut

sub SetTargetToCampaign {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SetTargetToCampaign',
        request => {
            name => 'SetTargetToCampaignRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'TargetId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'SetTargetToCampaignResponse'
        },
        parameters => \%args
    );
}

=head2 SetUsersToSegments

Parameters:
  SegmentId (long)
  UserHash (ArrayOfbase64Binary)

Returns:
  SetUsersToSegmentsResponse

=cut

sub SetUsersToSegments {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SetUsersToSegments',
        request => {
            name => 'SetUsersToSegmentsRequest',
            parameters => [
                { name => 'SegmentId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'UserHash', type => 'ArrayOfbase64Binary', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'SetUsersToSegmentsResponse'
        },
        parameters => \%args
    );
}

=head2 SubmitAdGroupForApproval

Parameters:
  AdGroupId (long)

Returns:
  SubmitAdGroupForApprovalResponse

=cut

sub SubmitAdGroupForApproval {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'SubmitAdGroupForApproval',
        request => {
            name => 'SubmitAdGroupForApprovalRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'SubmitAdGroupForApprovalResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateAdGroups

Parameters:
  CampaignId (long)
  AdGroups (ArrayOfAdGroup)

Returns:
  UpdateAdGroupsResponse

=cut

sub UpdateAdGroups {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateAdGroups',
        request => {
            name => 'UpdateAdGroupsRequest',
            parameters => [
                { name => 'CampaignId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'AdGroups', type => 'ArrayOfAdGroup', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateAdGroupsResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateAds

Parameters:
  AdGroupId (long)
  Ads (ArrayOfAd)

Returns:
  UpdateAdsResponse

=cut

sub UpdateAds {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateAds',
        request => {
            name => 'UpdateAdsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Ads', type => 'ArrayOfAd', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateAdsResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateBehavioralBids

Parameters:
  AdGroupId (long)
  BehavioralBids (ArrayOfBehavioralBid)

Returns:
  UpdateBehavioralBidsResponse

=cut

sub UpdateBehavioralBids {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateBehavioralBids',
        request => {
            name => 'UpdateBehavioralBidsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'BehavioralBids', type => 'ArrayOfBehavioralBid', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateBehavioralBidsResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateBusinesses

Parameters:
  Businesses (ArrayOfBusiness)

Returns:
  UpdateBusinessesResponse

=cut

sub UpdateBusinesses {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateBusinesses',
        request => {
            name => 'UpdateBusinessesRequest',
            parameters => [
                { name => 'Businesses', type => 'ArrayOfBusiness', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateBusinessesResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateCampaigns

Parameters:
  AccountId (long)
  Campaigns (ArrayOfCampaign)

Returns:
  UpdateCampaignsResponse

=cut

sub UpdateCampaigns {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateCampaigns',
        request => {
            name => 'UpdateCampaignsRequest',
            parameters => [
                { name => 'AccountId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Campaigns', type => 'ArrayOfCampaign', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateCampaignsResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateKeywords

Parameters:
  AdGroupId (long)
  Keywords (ArrayOfKeyword)

Returns:
  UpdateKeywordsResponse

=cut

sub UpdateKeywords {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateKeywords',
        request => {
            name => 'UpdateKeywordsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Keywords', type => 'ArrayOfKeyword', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateKeywordsResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateSitePlacements

Parameters:
  AdGroupId (long)
  SitePlacements (ArrayOfSitePlacement)

Returns:
  UpdateSitePlacementsResponse

=cut

sub UpdateSitePlacements {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateSitePlacements',
        request => {
            name => 'UpdateSitePlacementsRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'SitePlacements', type => 'ArrayOfSitePlacement', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateSitePlacementsResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateTarget

Parameters:
  AdGroupId (long)
  Target (Target)

Returns:
  UpdateTargetResponse

=cut

sub UpdateTarget {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateTarget',
        request => {
            name => 'UpdateTargetRequest',
            parameters => [
                { name => 'AdGroupId', type => 'long', namespace => 'https://adcenter.microsoft.com/v6' },
                { name => 'Target', type => 'Target', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateTargetResponse'
        },
        parameters => \%args
    );
}

=head2 UpdateTargetsInLibrary

Parameters:
  Targets (ArrayOfTarget)

Returns:
  UpdateTargetsInLibraryResponse

=cut

sub UpdateTargetsInLibrary {
    my ($self, %args) = @_;
    return $self->_invoke(
        soap_action => 'UpdateTargetsInLibrary',
        request => {
            name => 'UpdateTargetsInLibraryRequest',
            parameters => [
                { name => 'Targets', type => 'ArrayOfTarget', namespace => 'https://adcenter.microsoft.com/v6' }
            ]
        },
        response => {
            name => 'UpdateTargetsInLibraryResponse'
        },
        parameters => \%args
    );
}

our %_simple_types = (
    AdDistribution => 'https://adcenter.microsoft.com/v6',
    AdEditorialStatus => 'https://adcenter.microsoft.com/v6',
    AdGroupStatus => 'https://adcenter.microsoft.com/v6',
    AdStatus => 'https://adcenter.microsoft.com/v6',
    AdType => 'https://adcenter.microsoft.com/v6',
    AgeRange => 'https://adcenter.microsoft.com/v6',
    BehavioralBidStatus => 'https://adcenter.microsoft.com/v6',
    BiddingModel => 'https://adcenter.microsoft.com/v6',
    BudgetLimitType => 'https://adcenter.microsoft.com/v6',
    BusinessGeoCodeStatus => 'https://adcenter.microsoft.com/v6',
    BusinessStatus => 'https://adcenter.microsoft.com/v6',
    CampaignStatus => 'https://adcenter.microsoft.com/v6',
    CashBackStatus => 'https://adcenter.microsoft.com/v6',
    Day => 'https://adcenter.microsoft.com/v6',
    GenderType => 'https://adcenter.microsoft.com/v6',
    HourRange => 'https://adcenter.microsoft.com/v6',
    IncrementalBidPercentage => 'https://adcenter.microsoft.com/v6',
    KeywordEditorialStatus => 'https://adcenter.microsoft.com/v6',
    KeywordStatus => 'https://adcenter.microsoft.com/v6',
    OverridePriority => 'https://adcenter.microsoft.com/v6',
    PaymentType => 'https://adcenter.microsoft.com/v6',
    PricingModel => 'https://adcenter.microsoft.com/v6',
    QualityScore => 'https://adcenter.microsoft.com/v6',
    SitePlacementStatus => 'https://adcenter.microsoft.com/v6',
    StandardBusinessIcon => 'https://adcenter.microsoft.com/v6',
    char => 'http://schemas.microsoft.com/2003/10/Serialization/',
    duration => 'http://schemas.microsoft.com/2003/10/Serialization/',
    guid => 'http://schemas.microsoft.com/2003/10/Serialization/',
);

sub _simple_types {
    return %_simple_types;
}

our @_complex_types = (qw/
    Ad
    AdApiError
    AdApiFaultDetail
    AdGroup
    AdGroupInfo
    AdGroupNegativeKeywords
    AddAdGroupsResponse
    AddAdsResponse
    AddBehavioralBidsResponse
    AddBusinessesResponse
    AddCampaignsResponse
    AddKeywordsResponse
    AddSegmentsResponse
    AddSitePlacementsResponse
    AddTargetResponse
    AddTargetsToLibraryResponse
    AgeTarget
    AgeTargetBid
    ApiFaultDetail
    ApplicationFault
    BatchError
    BehavioralBid
    BehavioralTarget
    BehavioralTargetBid
    Bid
    Business
    BusinessImageIcon
    BusinessInfo
    BusinessTarget
    BusinessTargetBid
    Campaign
    CampaignInfo
    CampaignNegativeKeywords
    CashBackInfo
    CityTarget
    CityTargetBid
    CountryTarget
    CountryTargetBid
    Date
    DayTarget
    DayTargetBid
    DayTimeInterval
    DeleteAdGroupsResponse
    DeleteAdsResponse
    DeleteBehavioralBidsResponse
    DeleteBusinessesResponse
    DeleteCampaignsResponse
    DeleteKeywordsResponse
    DeleteSegmentsResponse
    DeleteSitePlacementsResponse
    DeleteTargetFromAdGroupResponse
    DeleteTargetFromCampaignResponse
    DeleteTargetResponse
    DeleteTargetsFromLibraryResponse
    DeleteUsersFromSegmentResponse
    Dimension
    EditorialApiFaultDetail
    EditorialError
    GenderTarget
    GenderTargetBid
    GetAdGroupsByCampaignIdResponse
    GetAdGroupsByIdsResponse
    GetAdGroupsInfoByCampaignIdResponse
    GetAdsByAdGroupIdResponse
    GetAdsByEditorialStatusResponse
    GetAdsByIdsResponse
    GetBehavioralBidsByAdGroupIdResponse
    GetBehavioralBidsByIdsResponse
    GetBusinessesByIdsResponse
    GetBusinessesInfoResponse
    GetCampaignsByAccountIdResponse
    GetCampaignsByIdsResponse
    GetCampaignsInfoByAccountIdResponse
    GetCustomSegmentsResponse
    GetKeywordEstimatesByBidsResponse
    GetKeywordQualityScoresByIdsResponse
    GetKeywordsByAdGroupIdResponse
    GetKeywordsByEditorialStatusResponse
    GetKeywordsByIdsResponse
    GetNegativeKeywordsByAdGroupIdsResponse
    GetNegativeKeywordsByCampaignIdsResponse
    GetPlacementDetailsForUrlsResponse
    GetSegmentsByIdsResponse
    GetSegmentsResponse
    GetSitePlacementsByAdGroupIdResponse
    GetSitePlacementsByIdsResponse
    GetTargetByAdGroupIdResponse
    GetTargetsByAdGroupIdsResponse
    GetTargetsByCampaignIdsResponse
    GetTargetsByIdsResponse
    GetTargetsInfoFromLibraryResponse
    HourTarget
    HourTargetBid
    HoursOfOperation
    ImpressionsPerDayRange
    Keyword
    KeywordBid
    KeywordEstimate
    KeywordQuality
    KeywordQualityDetail
    LocationTarget
    MatchTypeEstimate
    MediaType
    MetroAreaTarget
    MetroAreaTargetBid
    MobileAd
    OperationError
    PauseAdGroupsResponse
    PauseAdsResponse
    PauseBehavioralBidsResponse
    PauseCampaignsResponse
    PauseKeywordsResponse
    PauseSitePlacementsResponse
    PlacementDetail
    RadiusTarget
    RadiusTargetBid
    ResumeAdGroupsResponse
    ResumeAdsResponse
    ResumeBehavioralBidsResponse
    ResumeCampaignsResponse
    ResumeKeywordsResponse
    ResumeSitePlacementsResponse
    Segment
    SegmentTarget
    SegmentTargetBid
    SetNegativeKeywordsToAdGroupsResponse
    SetNegativeKeywordsToCampaignsResponse
    SetTargetToAdGroupResponse
    SetTargetToCampaignResponse
    SetUsersToSegmentsResponse
    SitePlacement
    StateTarget
    StateTargetBid
    SubmitAdGroupForApprovalResponse
    Target
    TargetInfo
    TextAd
    TimeOfTheDay
    UpdateAdGroupsResponse
    UpdateAdsResponse
    UpdateBehavioralBidsResponse
    UpdateBusinessesResponse
    UpdateCampaignsResponse
    UpdateKeywordsResponse
    UpdateSitePlacementsResponse
    UpdateTargetResponse
    UpdateTargetsInLibraryResponse
/);

sub _complex_types {
    return @_complex_types;
}

our %_array_types = (
    ArrayOfAd => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Ad',
        element_type => 'Ad'
    },
    ArrayOfAdApiError => {
        namespace_uri => 'https://adapi.microsoft.com',
        element_name => 'AdApiError',
        element_type => 'AdApiError'
    },
    ArrayOfAdGroup => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'AdGroup',
        element_type => 'AdGroup'
    },
    ArrayOfAdGroupInfo => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'AdGroupInfo',
        element_type => 'AdGroupInfo'
    },
    ArrayOfAdGroupNegativeKeywords => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'AdGroupNegativeKeywords',
        element_type => 'AdGroupNegativeKeywords'
    },
    ArrayOfAgeTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'AgeTargetBid',
        element_type => 'AgeTargetBid'
    },
    ArrayOfArrayOfPlacementDetail => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'ArrayOfPlacementDetail',
        element_type => 'ArrayOfPlacementDetail'
    },
    ArrayOfBatchError => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'BatchError',
        element_type => 'BatchError'
    },
    ArrayOfBehavioralBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'BehavioralBid',
        element_type => 'BehavioralBid'
    },
    ArrayOfBehavioralTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'BehavioralTargetBid',
        element_type => 'BehavioralTargetBid'
    },
    ArrayOfBusiness => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Business',
        element_type => 'Business'
    },
    ArrayOfBusinessInfo => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'BusinessInfo',
        element_type => 'BusinessInfo'
    },
    ArrayOfBusinessTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'BusinessTargetBid',
        element_type => 'BusinessTargetBid'
    },
    ArrayOfCampaign => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Campaign',
        element_type => 'Campaign'
    },
    ArrayOfCampaignInfo => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'CampaignInfo',
        element_type => 'CampaignInfo'
    },
    ArrayOfCampaignNegativeKeywords => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'CampaignNegativeKeywords',
        element_type => 'CampaignNegativeKeywords'
    },
    ArrayOfCityTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'CityTargetBid',
        element_type => 'CityTargetBid'
    },
    ArrayOfCountryTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'CountryTargetBid',
        element_type => 'CountryTargetBid'
    },
    ArrayOfDayTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'DayTargetBid',
        element_type => 'DayTargetBid'
    },
    ArrayOfDimension => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Dimension',
        element_type => 'Dimension'
    },
    ArrayOfEditorialError => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'EditorialError',
        element_type => 'EditorialError'
    },
    ArrayOfGenderTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'GenderTargetBid',
        element_type => 'GenderTargetBid'
    },
    ArrayOfHourTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'HourTargetBid',
        element_type => 'HourTargetBid'
    },
    ArrayOfHoursOfOperation => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'HoursOfOperation',
        element_type => 'HoursOfOperation'
    },
    ArrayOfKeyword => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Keyword',
        element_type => 'Keyword'
    },
    ArrayOfKeywordBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'KeywordBid',
        element_type => 'KeywordBid'
    },
    ArrayOfKeywordEstimate => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'KeywordEstimate',
        element_type => 'KeywordEstimate'
    },
    ArrayOfKeywordQuality => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'KeywordQuality',
        element_type => 'KeywordQuality'
    },
    ArrayOfMediaType => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'MediaType',
        element_type => 'MediaType'
    },
    ArrayOfMetroAreaTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'MetroAreaTargetBid',
        element_type => 'MetroAreaTargetBid'
    },
    ArrayOfOperationError => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'OperationError',
        element_type => 'OperationError'
    },
    ArrayOfPaymentType => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'PaymentType',
        element_type => 'PaymentType'
    },
    ArrayOfPlacementDetail => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'PlacementDetail',
        element_type => 'PlacementDetail'
    },
    ArrayOfRadiusTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'RadiusTargetBid',
        element_type => 'RadiusTargetBid'
    },
    ArrayOfSegment => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Segment',
        element_type => 'Segment'
    },
    ArrayOfSegmentTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'SegmentTargetBid',
        element_type => 'SegmentTargetBid'
    },
    ArrayOfSitePlacement => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'SitePlacement',
        element_type => 'SitePlacement'
    },
    ArrayOfStateTargetBid => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'StateTargetBid',
        element_type => 'StateTargetBid'
    },
    ArrayOfTarget => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'Target',
        element_type => 'Target'
    },
    ArrayOfTargetInfo => {
        namespace_uri => 'https://adcenter.microsoft.com/v6',
        element_name => 'TargetInfo',
        element_type => 'TargetInfo'
    },
    ArrayOfbase64Binary => {
        namespace_uri => 'http://schemas.microsoft.com/2003/10/Serialization/Arrays',
        element_name => 'base64Binary',
        element_type => 'base64Binary'
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
    EndPoint
    ApplicationToken
    CustomerAccountId
    CustomerId
    DeveloperToken
    Password
    UserName
    TrackingId
/);

1;
