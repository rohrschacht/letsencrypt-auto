# letsencrypt-auto

## About
This is a very simple Dockerfile for getting a [letsencrypt](https://letsencrypt.org/) certificate.
It does nothing fancy, it does not plug in to your running apache or nginx.
It is intended to be used as a oneshot command to get an up-to-date certificate on your filesystem.

## Usage
Shutdown your webservice.

Set the environment variables MAIL to your email address and DOMAINS to a comma-seperated list of domains you want to register on this server.
Make sure to mount /etc/letsencrypt to a persistent volume or folder on your file system.
Expose ports 80 and 443 to the world.

Start your webservice.

### Example
```
docker run -it --rm -p 80:80 -p 443:443 -v /etc/letsencrypt:/etc/letsencrypt -e MAIL=user@example.org -e DOMAINS=example.org,www.example.org,web.example.org letsencrypt-auto
```
