package Microsoft::AdCenter::V6::CampaignManagementService::BudgetLimitType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

sub DailyBudgetWithMaximumMonthlySpend {
    return 'DailyBudgetWithMaximumMonthlySpend';
}

sub MonthlyBudgetDivideDailyAcrossMonth {
    return 'MonthlyBudgetDivideDailyAcrossMonth';
}

sub MonthlyBudgetSpendUntilDepleted {
    return 'MonthlyBudgetSpendUntilDepleted';
}

1;
