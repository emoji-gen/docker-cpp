## Dockerfile for C++ project
[![CircleCI](https://circleci.com/gh/emoji-gen/docker-cpp/tree/master.svg?style=shield)](https://circleci.com/gh/emoji-gen/docker-cpp/tree/master)

The docker image is used to build [libemoji](https://github.com/emoji-gen/libemoji) project written by C++,
and it contains gcc as a C++ compiler and clang-format as a formatter.
After the master branch is updated, it is compiled on CircleCI and automatically publish to DockerHub.

## Installed packages
The docker image is based Debian 10 Buster, and these packages below are installed.

```
$ g++ --version
g++ (Debian 8.3.0-6) 8.3.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

$ clang-format --version
clang-format version 9.0.1-+20191211082622+c1a0a213378-1~exp1~20191211193200.102
```

## Build
Please run the following if you try to build the image.

```
$ docker build -t emojigen/cpp .
```

## License
MIT &copy; [Emoji Generator](https://emoji-gen.ninja/)
