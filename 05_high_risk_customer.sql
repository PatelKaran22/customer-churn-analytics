SELECT 
    CustomerId,
    churn_probability,
    Balance,
    IsActiveMember,
    Age,
    Geography
FROM workspace.default.high_risk_customers
ORDER BY churn_probability DESC
LIMIT 100;