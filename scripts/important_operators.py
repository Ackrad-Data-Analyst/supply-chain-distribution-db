import pandas as pd
dc = pd.read_csv('data/DistributionCenter.csv')
op = pd.read_csv('data/DeliveryOperator.csv')
important = op[op['TotalValue'] > 100].sort_values('TotalValue', ascending=False)
print("Important operators (TotalValue > 100):")
print(important[['OperatorID','FullName','DCID','TotalValue']].to_string(index=False))