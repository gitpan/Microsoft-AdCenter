package Microsoft::AdCenter::Retry;
# Copyright (C) 2010 Andre Paterlini Oliveira Vieira
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Class::Accessor::Chained Exporter Microsoft::AdCenter/;

our @EXPORT_OK = qw/CONNECTION_ERROR INTERNAL_SERVER_ERROR/;
our %EXPORT_TAGS = (
    ErrorTypes => [qw/CONNECTION_ERROR INTERNAL_SERVER_ERROR/]
);

=head1 NAME

Microsoft::AdCenter::Retry - Defines when and how to retry a failed API call.

=cut

=head1 SYNOPSIS

    my $retry = Microsoft::AdCenter::Retry->new(
        ErrorType => Microsoft::AdCenter::Retry->CONNECTION_ERROR | Microsoft::AdCenter::Retry->INTERNAL_SERVER_ERROR,
        RetryTimes => 3,
        WaitTime => 30,
        ScalingWaitTime => 2,
        Callback => sub { my $e = shift; warn "Successfully retried API call for " . __PACKAGE__ . " after error $e was caught"; },
    );

    my $service_client = Microsoft::AdCenter::CampaignManagementService->new
        ->ApplicationToken("application token")
        ->CustomerAccountId("customer account id")
        ->CustomerId("customer id")
        ->DeveloperToken("developer token")
        ->Password("password")
        ->UserName("user name")
        ->RetrySettings( $retry );


=head1 METHODS

=head2 ErrorType

Returns / sets the error type you want to retry upon. Can either be CONNECTION_ERROR or INTERNAL_SERVER_ERROR or a combination of the two

=head2 RetryTimes

Returns / sets the number of times you want to retry the API call

=head2 WaitTime

Returns / sets the time to wait between retries, in seconds

=head2 ScalingWaitTime

Returns / sets an optional interval that, will increase the wait time by the interval at each retry. From the above example:
30 seconds on the first try, 60 on the second, 90 on the third, and so on.

=head2 Callback

Returns / sets an optional callback sub that will be called upon every retry

=cut

use constant CONNECTION_ERROR => 0x01;
use constant INTERNAL_SERVER_ERROR => 0x02;

sub new {
    my ($pkg, %args) = @_;
    my $self = bless {}, $pkg;
    foreach my $k (keys %args) {
        if ($self->can($k)) {
            $self->$k($args{$k});
        }
    }
    return $self;
}

__PACKAGE__->mk_accessors(qw/ErrorType RetryTimes WaitTime ScalingWaitTime Callback/);

1;
