import boto3

glue = boto3.client('glue')

def lambda_handler(event, context):
    response = glue.start_job_run(
        JobName='instacart_transformation'
    )
    
    return {
        'statusCode': 200,
        'body': 'Glue job started',
        'jobRunId': response['JobRunId']
    }
