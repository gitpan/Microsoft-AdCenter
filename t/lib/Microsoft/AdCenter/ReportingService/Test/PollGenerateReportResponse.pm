package Microsoft::AdCenter::ReportingService::Test::PollGenerateReportResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;
use Microsoft::AdCenter::ReportingService::PollGenerateReportResponse;

sub test_can_create_poll_generate_report_response_and_set_all_fields : Test(2) {
    my $poll_generate_report_response = Microsoft::AdCenter::ReportingService::PollGenerateReportResponse->new
        ->ReportRequestStatus('report request status')
    ;

    ok($poll_generate_report_response);

    is($poll_generate_report_response->ReportRequestStatus, 'report request status', 'can get report request status');
};

1;
