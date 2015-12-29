# Twitter Background Counter

![Example](https://raw.githubusercontent.com/dunckr/twitter-background-counter/master/example.jpg)

Twitter profile background banner click counter.

## Install

```sh
brew install docker boot2docker docker-machine docker-compose virtualmachine
docker-machine create --driver virtualbox --virtualbox-memory 3076 dev
docker-machine start dev
eval "$(docker-machine env dev)"
```

## Start

```sh
make build
make start
open http://`docker-machine ip dev`:3000
```

## Logs

```sh
make status
```

#### ENV Variables

* TWITTER_CONSUMER_KEY
* TWITTER_CONSUMER_SECRET
* TWITTER_ACCESS_TOKEN
* TWITTER_ACCESS_TOKEN_SECRET

## License

MIT © [Duncan Beaton](http://dunckr.com)
