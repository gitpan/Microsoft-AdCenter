package Microsoft::AdCenter::ReportingService::Test::MetroAreaDemographicReportRequest;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::MetroAreaDemographicReportRequest;

sub test_can_create_metro_area_demographic_report_request_and_set_all_fields : Test(6) {
    my $metro_area_demographic_report_request = Microsoft::AdCenter::ReportingService::MetroAreaDemographicReportRequest->new
        ->Aggregation('aggregation')
        ->Columns('columns')
        ->Filter('filter')
        ->Scope('scope')
        ->Time('time')
    ;

    ok($metro_area_demographic_report_request);

    is($metro_area_demographic_report_request->Aggregation, 'aggregation', 'can get aggregation');
    is($metro_area_demographic_report_request->Columns, 'columns', 'can get columns');
    is($metro_area_demographic_report_request->Filter, 'filter', 'can get filter');
    is($metro_area_demographic_report_request->Scope, 'scope', 'can get scope');
    is($metro_area_demographic_report_request->Time, 'time', 'can get time');
};

1;
