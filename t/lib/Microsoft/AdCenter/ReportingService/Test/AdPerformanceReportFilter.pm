package Microsoft::AdCenter::ReportingService::Test::AdPerformanceReportFilter;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AdPerformanceReportFilter;

sub test_can_create_ad_performance_report_filter_and_set_all_fields : Test(4) {
    my $ad_performance_report_filter = Microsoft::AdCenter::ReportingService::AdPerformanceReportFilter->new
        ->AdDistribution('ad distribution')
        ->AdType('ad type')
        ->LanguageAndRegion('language and region')
    ;

    ok($ad_performance_report_filter);

    is($ad_performance_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($ad_performance_report_filter->AdType, 'ad type', 'can get ad type');
    is($ad_performance_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
