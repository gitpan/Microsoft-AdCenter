package Microsoft::AdCenter::ReportingService::Test::AgeGenderDemographicReportFilter;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AgeGenderDemographicReportFilter;

sub test_can_create_age_gender_demographic_report_filter_and_set_all_fields : Test(3) {
    my $age_gender_demographic_report_filter = Microsoft::AdCenter::ReportingService::AgeGenderDemographicReportFilter->new
        ->AdDistribution('ad distribution')
        ->LanguageAndRegion('language and region')
    ;

    ok($age_gender_demographic_report_filter);

    is($age_gender_demographic_report_filter->AdDistribution, 'ad distribution', 'can get ad distribution');
    is($age_gender_demographic_report_filter->LanguageAndRegion, 'language and region', 'can get language and region');
};

1;
