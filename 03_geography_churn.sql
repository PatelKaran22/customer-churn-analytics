SELECT 
    Geography,
    ROUND(AVG(churn_probability), 3) AS avg_risk,
    COUNT(*) AS customers
FROM workspace.default.churn_predictions
GROUP BY Geography
ORDER BY avg_risk DESC;