# Project: AWS Secure File Sharing

## Set Up Amazon S3 Bucket

1. Follow the steps mentioned earlier to create an Amazon S3 bucket with a unique name.
2. Configure the bucket for static website hosting.
    - Go to the AWS Management Console.
    - Navigate to the Amazon S3 service.
    - Create a new S3 bucket with a globally unique name.
    - In the S3 bucket settings, enable static website hosting and configure the index document.

## Create Folders in S3 Bucket

1. Inside your S3 bucket, create folders to organize different types of files (e.g., "Documents," "Images," "Videos").
2. In the S3 console, navigate to your bucket.
3. Click the "Create folder" button and name your folders accordingly.

## Upload Sample Files

1. Upload some sample files into each folder to simulate a real file storage scenario.
2. Select a folder in the S3 console.
3. Click the "Upload" button and add sample files to each folder.

## Configure Bucket Policies

1. Implement bucket policies to control access to your files based on specific conditions such as time, IP address, or user agents.
2. In the S3 console, select your bucket.
3. Go to the "Permissions" tab and click on "Bucket Policy."
4. Add a bucket policy to define access conditions. For example, allow access only from specific IP addresses.

## Generate Pre-Signed URLs

1. Use the AWS Management Console or AWS SDKs/CLI to generate pre-signed URLs for specific files or folders.
2. In the S3 console, select a file.
3. Click "Actions" and then "Create pre-signed URL." Adjust expiration time and generate the URL.

## Access Logging and Monitoring

1. Enable access logging for your S3 bucket to record requests made against your bucket. Analyze the logs to understand usage patterns.
2. Set up Amazon CloudWatch Events to monitor specific S3 bucket events and trigger notifications or other actions.
3. In the S3 console, go to the "Management" tab and enable access logging.
4. In the CloudWatch console, create a new rule to monitor S3 events, e.g., object creation.

## Cross-Origin Resource Sharing (CORS)

1. Implement CORS settings to control which domains can access your S3 bucket.
2. In the S3 console, go to the "Permissions" tab and click on "Cross-origin resource sharing (CORS)."
3. Define CORS rules to control domain access.

## Testing

1. **Access Control Testing:**
   - Verify that bucket policies restrict access based on specified conditions.
   - Test access using different IP addresses to ensure policy conditions are enforced.

2. **Pre-Signed URLs Testing:**
   - Generate pre-signed URLs and verify that they grant temporary access to the specified resources.
   - Test pre-signed URLs with different expiration times to ensure proper functionality.

3. **Logging and Monitoring Testing:**
   - Check CloudWatch for logged S3 events and ensure that they align with expected bucket activities.
   - Trigger specific events and verify that CloudWatch Events trigger notifications or other configured actions.

4. **CORS Testing:**
   - Test domain access based on defined CORS rules. Ensure only allowed domains can access the S3 bucket.


