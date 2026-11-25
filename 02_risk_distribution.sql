SELECT 
    CASE 
        WHEN churn_probability >= 0.7 THEN 'High Risk'
        WHEN churn_probability >= 0.4 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_segment,
    COUNT(*) AS customers
FROM workspace.default.churn_predictions
GROUP BY risk_segment;