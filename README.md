# Onlygames-docker

This repo holds a dockerized version of the [onlygames.com.ar](https://onlygames.com.ar) website

## Requirements

- `composer.php`
- `docker@^20`
- `nodejs` (optional)
- [`onlygames-plugins` repository](https://github.com/onlygames-latam/onlygames-plugins)
- [`onlygames-themes` repository](https://github.com/onlygames-latam/onlygames-themes)

## Installation

### Install Dependencies
- Clone the Plugins repository: `cd onlygames-plugins` and run `npm i`
- Clone the Themes repository: `cd onlygames-themes` and run `npm i`

### Run Wordpress App

- Clone this repository and `cd onlygames-docker`
- Run `npm i` (this will run `composer install` from the `/wp-app` directory)
- Rename `.env.example` into `.env`
- Finally, run `docker-compose up -d` and go to `https://localhost:8080`

> Plugins & Themes will be automatically download and copied inside `./wp-app/wp-content/`

### Services

#### PhpMyAdmin

Connect using `WORDPRESS_DB_USER` & `WORDPRESS_DB_PASSWORD`


## Production Deployment

### Oracle OCI Setup

For production deployment on Oracle Cloud Infrastructure:

1. Ensure `composer` is installed on your OCI instance
2. Navigate to your project directory
3. [Apache documentation for OCI Ubuntu instances](https://docs.oracle.com/en-us/iaas/developer-tutorials/tutorials/apache-on-ubuntu/01oci-ubuntu-apache-summary.htm)
4. Use Oracle Cloud Console to manage your instance

> **Note:** Keep API endpoints, IP addresses, and cloud tenancy links in separate secure configuration files (`.env` or similar), not in this README.

### Deployment Resources

- [GitHub Action Docker Compose deployments via SSH](https://docs.servicestack.net/ssh-docker-compose-deploment#leveraging-github-container-registry)
- [Deploying Git Project Repositories to an Ubuntu server](https://gist.github.com/WesThorburn/9ac3fb5713b85e31714d9e9052e8d19c)
- [Build a CI/CD pipeline for cloud deployments by using Github Actions and Oracle Cloud Infrastructure DevOps service](https://docs.oracle.com/en/solutions/cicd-pipe-github-act-oci-devops/index.html#GUID-FA763875-4F7C-4753-A126-54CDC4791668)

### Storage

#### [Object Storage API](https://docs.oracle.com/en-us/iaas/api/#/en/objectstorage/20160918/Bucket/)

- [Uploading an Object Storage Object to a Bucket](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/managingobjects_topic-To_upload_objects_to_a_bucket.htm)

##### Generate Access Key & Secret Key

1. [Amazon S3 Compatibility API Prerequisites](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/s3compatibleapi.htm#Amazon_S3_Compatibility_API)
2. [Working with Customer Secret Keys](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm#Working2)
3. ⭐️ [Generate a Customer Secret Key](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm#create-secret-key)

## REST API

- [Obtaining an OAuth 2.0 Access Token](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm)
- [Authentication](https://docs.oracle.com/en/cloud/paas/identity-cloud/rest-api/op-oauth2-v1-token-post.html)
- [Working with OAuth 2 to Access the REST API](https://docs.oracle.com/en/cloud/paas/identity-cloud/rest-api/OATOAuthClientWebApp.html)

