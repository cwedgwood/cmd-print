# -*- conf -*-

FROM scratch
ADD /cmd-print /

ENTRYPOINT [ "/cmd-print", "entrypoint-arg-1", "entrypoint-arg-2" ]

# default args if none given (will also be used as entrypoint if not specified)
CMD [ "dockerfile-cmd-1", "dockerfile-cmd-2", "dockerfile-cmd-3" ]
