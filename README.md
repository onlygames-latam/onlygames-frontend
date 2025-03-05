# Onlygames-docker

This repo holds a dockerized version of the [onlygames.com.ar](https://onlygames.com.ar) website

## Requirements

- `composer.php``
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
- Rename `.env.example` into `.env.`
- Finally, run `docker-compose up -d` and go to `https://localhost:8080`

> Plugins & Themes will be automatically download and copied inside `./wp-app/wp-content/`

### Services

#### PhpMyAdmin

Connect using `WORDPRESS_DB_USER` & `WORDPRESS_DB_PASSWORD`


## Oracle OCI

### General Info

- You can directly run sudo or use `sudo su`
- `cd var/www/`
- [Apache was installed](https://docs.oracle.com/en-us/iaas/developer-tutorials/tutorials/apache-on-ubuntu/01oci-ubuntu-apache-summary.htm) at `var/www/html`
- Project directory is at `var/www/onlygames-frontend`
- Instance API: [http://159.112.135.106](http://159.112.135.106)
- [Tenancy Info](https://cloud.oracle.com/tenancy?region=sa-santiago-1)

## Resources

- [GitHub Action Docker Compose deployments via SSH](https://docs.servicestack.net/ssh-docker-compose-deploment#leveraging-github-container-registry)
- [Deploying Git Project Repositories to an Ubuntu server](https://gist.github.com/WesThorburn/9ac3fb5713b85e31714d9e9052e8d19c)
- [Build a CI/CD pipeline for cloud deployments by using Github Actions and Oracle Cloud Infrastructure DevOps service](https://docs.oracle.com/en/solutions/cicd-pipe-github-act-oci-devops/index.html#GUID-FA763875-4F7C-4753-A126-54CDC4791668)


### Storage

#### [Object Storage API](https://docs.oracle.com/en-us/iaas/api/#/en/objectstorage/20160918/Bucket/)

- [Uploading an Object Storage Object to a Bucket](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/managingobjects_topic-To_upload_objects_to_a_bucket.htm)


### Buckets

#### onlygames-prod

- 🔒 [Pre-Authenticated Request URL](https://docs.oracle.com/en-us/iaas/api/#/en/objectstorage/20160918/PreauthenticatedRequest/)
    - 2030 -> https://objectstorage.sa-santiago-1.oraclecloud.com/p/2t2_05pH8a53LkJzwJ1NPYhYfQcYQUVPeBeC0jKbxtYE7fyhWWiBCBEAHe5T6mMV/n/axcphuaitsmn/b/bucket-onlygames-prod/o/
    - Use this URL in the future https://objectstorage.sa-santiago-1.oraclecloud.com/p/2t2_05pH8a53LkJzwJ1NPYhYfQcYQUVPeBeC0jKbxtYE7fyhWWiBCBEAHe5T6mMV/n/axcphuaitsmn/b/bucket-onlygames-prod/o/
- [Namespace](https://cloud.oracle.com/object-storage/buckets/axcphuaitsmn/bucket-onlygames-prod/objects?region=sa-santiago-1): axcphuaitsmn
- [Download Bucket Content](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/bulk-download-object.htm)

##### Generate Access Key & Secret Key

1. [Amazon S3 Compatibility API Prerequisites](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/s3compatibleapi.htm#Amazon_S3_Compatibility_API)
2. [Working with Customer Secret Keys](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm#Working2)
3. ⭐️ [Generate a Customer Secret Key](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm#create-secret-key)

##### Wordpress-media-cloud-plugin:

This is the name of the **Customer Secret Key** generated for **bucket-onlygames-prod**

- ACCESS_KEY: 8a536a8a0dfd2e8dad3528e855d8c373a1f160bb
- SECRET: XuxSeRAl2w2ZiTyGtmigPr94a6WPL3B44XRSQ9k4qWA=
- Bucket: bucket-onlygames-prod
- Region: Automatic
- Endpoint: [text](https://axcphuaitsmn.compat.objectstorage.sa-santiago-1.oraclecloud.com)

These fields were returned after generating an **API Key** under **Identity & Security** > **Domains** > **Default** > **Users**

> [DEFAULT]
> user=ocid1.user.oc1..aaaaaaaag32655pfxmxsxhju3mlea6icu3bseorhhfrnzpeg3mfn657pfkgq
> fingerprint=7a:d1:86:fc:e4:26:a0:d2:5c:b8:9f:f7:db:e5:55:8a
> tenancy=ocid1.tenancy.oc1..aaaaaaaadcak27a7qklojkeuxgo55haobne33zhtu5mvxuumgf45yesuk6za
> region=sa-santiago-1
> key_file=<path to your private keyfile> # TODO

## REST API

- [Obtaining an OAuth 2.0 Access Token](https://docs.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcredentials.htm)
- [Authentication](https://docs.oracle.com/en/cloud/paas/identity-cloud/rest-api/op-oauth2-v1-token-post.html)
- [Working with OAuth 2 to Access the REST API](https://docs.oracle.com/en/cloud/paas/identity-cloud/rest-api/OATOAuthClientWebApp.html)

