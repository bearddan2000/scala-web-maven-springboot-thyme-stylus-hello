FROM vanto/apache-buildr:latest-jruby-jdk8

WORKDIR /workspace

COPY  bin/ .

CMD ["run"]
