public type CorporatePayrollServiceAgreementRequest record {
    string customerId;
    string customerName;
    string productDirectoryId;
    string customerProductServiceDirectoryId;
    string payrollServiceType;
    string paymentFrequency;
    int employeeCount;
    string feeAmount;
    string feeCurrency;
    string paymentAccountId;
};

public type CorporatePayrollServiceAgreementResponse record {
    string workflowId;
    string payrollAgreementId;
    string salesProductAgreementId;
    string status;
    string message;
};
