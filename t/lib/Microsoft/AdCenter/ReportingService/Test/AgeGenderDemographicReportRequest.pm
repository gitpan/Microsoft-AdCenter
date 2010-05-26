package Microsoft::AdCenter::ReportingService::Test::AgeGenderDemographicReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::AgeGenderDemographicReportRequest;

sub test_can_create_age_gender_demographic_report_request_and_set_all_fields : Test(6) {
    my $age_gender_demographic_report_request = Microsoft::AdCenter::ReportingService::AgeGenderDemographicReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($age_gender_demographic_report_request);

    is($age_gender_demographic_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($age_gender_demographic_report_request->Columns, 'columns', 'can get columns');
    is($age_gender_demographic_report_request->Filter, 'filter', 'can get filter');
    is($age_gender_demographic_report_request->Scope, 'scope', 'can get scope');
    is($age_gender_demographic_report_request->Time, 'time', 'can get time');
};

1;
