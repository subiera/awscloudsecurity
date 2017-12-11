aws iam create-role --role-name IAMMasterRole --assume-role-policy-document file://iam-manager-trust-policy.json

aws iam create-role --role-name IAMManagerRole --assume-role-policy-document file://iam-manager-trust-policy.json

aws iam put-role-policy --role-name IAMMasterRole --policy-name IAM-MasterRolePolicy --policy-document file://iam-master-policy.json

aws iam put-role-policy --role-name IAMManagerRole --policy-name IAMManagerRolePolicy --policy-document file://iam-manager-policy.json

aws iam create-group --group-name IAMMasters

aws iam put-group-policy --group-name IAMMasters --policy-name IAMMastersGroupTrustPolicy --policy-document file://iam-master-group-trust-policy.json

aws iam create-group --group-name IAMManagers

aws iam put-group-policy --group-name IAMManagers --policy-name IAMManagersGroupTrustPolicy --policy-document file://iam-managers-group-trust-policy.json