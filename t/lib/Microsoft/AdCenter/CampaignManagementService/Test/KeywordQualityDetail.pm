package Microsoft::AdCenter::CampaignManagementService::Test::KeywordQualityDetail;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::KeywordQualityDetail;

sub test_can_create_keyword_quality_detail_and_set_all_fields : Test(7) {
    my $keyword_quality_detail = Microsoft::AdCenter::CampaignManagementService::KeywordQualityDetail->new
        ->AdQualityScore('ad quality score')
        ->LandingPageQualityScore('landing page quality score')
        ->MinimumBid('minimum bid')
        ->OverAllQualityScore('over all quality score')
        ->SuggestedMainLineBid('suggested main line bid')
        ->SuggestedSideBarBid('suggested side bar bid')
    ;

    ok($keyword_quality_detail);

    is($keyword_quality_detail->AdQualityScore, 'ad quality score', 'can get ad quality score');
    is($keyword_quality_detail->LandingPageQualityScore, 'landing page quality score', 'can get landing page quality score');
    is($keyword_quality_detail->MinimumBid, 'minimum bid', 'can get minimum bid');
    is($keyword_quality_detail->OverAllQualityScore, 'over all quality score', 'can get over all quality score');
    is($keyword_quality_detail->SuggestedMainLineBid, 'suggested main line bid', 'can get suggested main line bid');
    is($keyword_quality_detail->SuggestedSideBarBid, 'suggested side bar bid', 'can get suggested side bar bid');
};

1;
