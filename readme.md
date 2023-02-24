
### set env for aws account
```
export AWS_ACCESS_KEY_ID="";\
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION="us-east-1"

```

### Create backend tf state bucket
```
aws s3api create-bucket --bucket "gctest-terraform-state-backend" --region "us-east-1"

```

### Create backend tf state DynamoDB table
```
aws dynamodb create-table --table-name "terraform_state" \
        --attribute-definitions AttributeName=LockID,AttributeType=S \
        --key-schema AttributeName=LockID,KeyType=HASH \
        --billing-mode PAY_PER_REQUEST
```