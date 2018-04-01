# Dockerfile for cmd-print					-*- conf -*-
#
# A small program to print out argv[]

# use bldr (has musl-gcc) to build
FROM cwedgwood/bldr

RUN mkdir -p /build/
WORKDIR /build/
COPY . .
RUN make


FROM scratch
COPY --from=0 /build/cmd-print /
ENTRYPOINT [ "/cmd-print", "entrypoint-arg-1", "entrypoint-arg-2" ]

# default args if none given (will also be used as entrypoint if not specified)
CMD [ "dockerfile-cmd-1", "dockerfile-cmd-2", "dockerfile-cmd-3" ]
