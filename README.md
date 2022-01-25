## Dockerized cronv

Thanks to [vitkutny](https://github.com/vitkutny) for having build a neat tool like `cronv`.

This repository provides a wrapper for cronv in order to not have to build it locally or having `golang` present.
Simply use it by:

```shell
$ crontab -l | docker run --rm -i -v $(pwd)/output:/output wizzn/cronv
```

This will generate the `crontab.html` within your `$(pwd)/output` folder.