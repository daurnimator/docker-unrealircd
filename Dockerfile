FROM archlinux/base

RUN pacman -Sy --noconfirm unrealircd
RUN groupadd -g 1000 unrealirc && \
    useradd -r -u 1000 -g unrealirc unrealirc
USER unrealirc

EXPOSE 6667 6697 6900

CMD ["/usr/bin/unrealircd", "-F"]
