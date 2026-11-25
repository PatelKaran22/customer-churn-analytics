-- Query 1: KPI
SELECT 
    COUNT(*) AS total_customers,
    SUM(risk_flag) AS high_risk_customers,
    ROUND(AVG(churn_probability), 3) AS avg_churn_probability
FROM workspace.default.churn_predictions;