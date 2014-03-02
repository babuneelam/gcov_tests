
BUILDDIR=bin

SUBDIRS = libpagemap ksmutils procrank showslab latencytop  sane_schedstat cpustats procmem showmap

all: 
	@for dir in $(SUBDIRS); \
        do \
            $(MAKE) -C $${dir} $@ || exit $$?; \
        done

clean:
	echo cleaning up in .
	@for dir in $(SUBDIRS); \
        do \
            $(MAKE) -C $${dir} clean || exit $$?; \
        done
