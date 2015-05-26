# jenkins-rbenv
Docker container for Jenkins with rbenv.

## Usage

You can use this container as a Jenkins server with rbenv and [some plugins](plugins.txt).
Run your container like this.

```
docker run -d -p 8080:8080 -it otahi/jenkins-rbenv
```

Then, you can access to the container with your browser.

## Contributing

1. Fork it ( https://github.com/otahi/jenkins-rbenv/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

