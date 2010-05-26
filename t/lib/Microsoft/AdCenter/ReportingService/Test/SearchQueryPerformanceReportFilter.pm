package Microsoft::AdCenter::ReportingService::Test::SearchQueryPerformanceReportFilter;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::SearchQueryPerformanceReportFilter;

sub test_can_create_search_query_performance_report_filter_and_set_all_fields : Test(7) {
    my $search_query_performance_report_filter = Microsoft::AdCenter::ReportingService::SearchQueryPerformanceReportFilter->new
        ->AdStatus('ad status')
        ->AdType('ad type')
        ->CampaignStatus('campaign status')
        ->DeliveredMatchType('delivered match type')
        ->LanguageAndRegion('language and region')
        ->SearchQueries('search queries')
    ;

    ok($search_query_performance_report_filter);

    is($search_query_performance_report_filter->AdStatus, 'ad status', 'can get ad status');
    is($search_query_performance_report_filter->AdType, 'ad type', 'can get ad type');
    is($search_query_performance_report_filter->CampaignStatus, 'campaign status', 'can get campaign status');
    is($search_query_performance_report_filter->DeliveredMatchType, 'delivered match type', 'can get delivered match type');
    is($search_query_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
    is($search_query_performance_report_filter->SearchQueries, 'search queries', 'can get search queries');
};

1;
