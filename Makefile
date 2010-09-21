# vim: ts=8 sw=8

PREFIX	=${HOME}/opt
BINDIR	=${PREFIX}/bin

all::	ctr

check::	ctr
	date | ./ctr
	date | ./ctr -w40

clean::

distclean clobber:: clean

install:: ctr
	install -d ${BINDIR}
	install -c ctr ${BINDIR}/

uninstall::
	${RM} ${BINDIR}/ctr
