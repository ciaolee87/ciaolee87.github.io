FROM amazon/aws-cli:latest

WORKDIR /app
COPY ./docs .

RUN --mount=type=secret,id=AWS_ACCESS_KEY_ID,env=AWS_ACCESS_KEY_ID \
    --mount=type=secret,id=AWS_SECRET_ACCESS_KEY,env=AWS_SECRET_ACCESS_KEY \
    --mount=type=secret,id=AWS_DEFAULT_REGION,env=AWS_DEFAULT_REGION \
    --mount=type=secret,id=AWS_S3_BUCKET,env=AWS_S3_BUCKET \
    sh -c 'aws s3 sync . "s3://${AWS_S3_BUCKET}"'
