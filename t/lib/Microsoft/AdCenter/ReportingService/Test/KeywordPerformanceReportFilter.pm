package Microsoft::AdCenter::ReportingService::Test::KeywordPerformanceReportFilter;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::KeywordPerformanceReportFilter;

sub test_can_create_keyword_performance_report_filter_and_set_all_fields : Test(7) {
    my $keyword_performance_report_filter = Microsoft::AdCenter::ReportingService::KeywordPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->AdType('ad type')
        ->Cashback('cashback')
        ->DeliveredMatchType('delivered match type')
        ->Keywords('keywords')
        ->LanguageAndRegion('language and region')
    ;

    ok($keyword_performance_report_filter);

    is($keyword_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($keyword_performance_report_filter->AdType, 'ad type', 'can get ad type');
    is($keyword_performance_report_filter->Cashback, 'cashback', 'can get cashback');
    is($keyword_performance_report_filter->DeliveredMatchType, 'delivered match type', 'can get delivered match type');
    is($keyword_performance_report_filter->Keywords, 'keywords', 'can get keywords');
    is($keyword_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
