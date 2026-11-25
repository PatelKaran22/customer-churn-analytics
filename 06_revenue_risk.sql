SELECT 
    ROUND(SUM(Balance), 2) AS total_balance,
    ROUND(SUM(CASE WHEN churn_probability >= 0.7 THEN Balance ELSE 0 END), 2) AS high_risk_balance
FROM workspace.default.churn_predictions;