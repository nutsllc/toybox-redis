# Redis on Docker

A Dockerfile for deploying a [Redis](http://redis.io/) which is in-memory data structure store, used as database, cache and message broker.

This image is registered to the [Docker Hub](https://hub.docker.com/r/nutsllc/toybox-redis/) which is the official docker image registory.

## What is the Redis

>Redis is an open source (BSD licensed), in-memory data structure store, used as database, cache and message broker. It supports data structures such as strings, hashes, lists, sets, sorted sets with range queries, bitmaps, hyperloglogs and geospatial indexes with radius queries. Redis has built-in replication, Lua scripting, LRU eviction, transactions and different levels of on-disk persistence, and provides high availability via Redis Sentinel and automatic partitioning with Redis Cluster.

* [Learn more](http://redis.io/topics/introduction)

## Usage

To run redis:

```
docker run --name redis -itd nutsllc/toybox-redis
```

Then going into redis container and executing redis-cli client:

```
docker exec -it redis redis-cli
```

## License

* [Redis](http://redis.io/) BSD

## Contributing

We'd love for you to contribute to this container. You can request new features by creating an [issue](https://github.com/nutsllc/toybox-redis/issues), or submit a [pull request](https://github.com/nutsllc/toybox-redis/pulls) with your contribution.
