# People Data Transformations

Add your MotherDuck token to your environment variables.

```
export MOTHERDUCK_TOKEN=[your_token_here]
```

### Run the pipelines in prod

Try running the following commands:
- dbt run --target prod --full-refresh
- dbt test --target prod
