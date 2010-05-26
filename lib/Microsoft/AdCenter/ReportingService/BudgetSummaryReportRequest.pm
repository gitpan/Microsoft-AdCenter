package Microsoft::AdCenter::ReportingService::BudgetSummaryReportRequest;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ReportingService::ReportRequest/;

=head1 NAME

Microsoft::AdCenter::ReportingService::BudgetSummaryReportRequest - Represents "BudgetSummaryReportRequest" in Microsoft AdCenter Reporting Service.

=head1 INHERITANCE

Microsoft::AdCenter::ReportingService::ReportRequest

=cut

sub _type_name {
    return 'BudgetSummaryReportRequest';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    Columns
    Scope
    Time
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Columns => 'ArrayOfBudgetSummaryReportColumn',
    Scope => 'AccountReportScope',
    Time => 'BudgetSummaryReportTime',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

__PACKAGE__->mk_accessors(__PACKAGE__->_attributes);

1;

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-US/library/ee730327%28v=MSADS.60%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

=head2 new

Creates a new instance

=head2 get/set methods

=over 8

Columns (ArrayOfBudgetSummaryReportColumn)
Scope (AccountReportScope)
Time (BudgetSummaryReportTime)

Inherited attributes are not listed.

=back

=cut

