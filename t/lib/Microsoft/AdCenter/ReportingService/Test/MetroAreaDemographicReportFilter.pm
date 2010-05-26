package Microsoft::AdCenter::ReportingService::Test::MetroAreaDemographicReportFilter;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::MetroAreaDemographicReportFilter;

sub test_can_create_metro_area_demographic_report_filter_and_set_all_fields : Test(4) {
    my $metro_area_demographic_report_filter = Microsoft::AdCenter::ReportingService::MetroAreaDemographicReportFilter->new
        ->AdDistribution('ad distribution')
        ->Country('country')
        ->LanguageAndRegion('language and region')
    ;

    ok($metro_area_demographic_report_filter);

    is($metro_area_demographic_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($metro_area_demographic_report_filter->Country, 'country', 'can get country');
    is($metro_area_demographic_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
