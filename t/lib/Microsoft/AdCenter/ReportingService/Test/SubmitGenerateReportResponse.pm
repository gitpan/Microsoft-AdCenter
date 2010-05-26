package Microsoft::AdCenter::ReportingService::Test::SubmitGenerateReportResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::SubmitGenerateReportResponse;

sub test_can_create_submit_generate_report_response_and_set_all_fields : Test(2) {
    my $submit_generate_report_response = Microsoft::AdCenter::ReportingService::SubmitGenerateReportResponse->new
        ->ReportRequestId('report request id')
    ;

    ok($submit_generate_report_response);

    is($submit_generate_report_response->ReportRequestId, 'report request id', 'can get report request id');
};

1;
