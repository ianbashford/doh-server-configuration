# doh-server-configuration
Setup for a production DOH-Server

## Introduction
This is the configuration for a lightweight doh-server.
For clients see  [dnscrypt-proxy](https://github.com/dnscrypt/dnscrypt-proxy) 
For publishing, you can use [dnscrypt-resolvers](https://github.com/dnscrypt/dnscrypt-resolvers)

This lightweight config will deploy on a small cloud host like vultr or digital ocean.

## Design
The service is fronted by Nginx listening on the encrypted HTTP port 443.
There are nginx servers for each actual resolver - in the example, two are locally hosted doh-proxy servers [doh-server](https://github.com/jedisct1/doh-server)  
There's a backup which forwards to cloudflare.
All services run in docker containers.

