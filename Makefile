# Makefile --
#
# Administration rules for packaging GNU Zile in Slackware.

TAR		= tar
TARBALL_FILES	= $(addprefix zile/,README slack-desc zile.SlackBuild zile.info)
TARBALL		= zile/zile.tar

TMP		= /home/marco/var/tmp

.PHONY: all tarball clean

all:

clean:
	$(RM) -f $(TARBALL)

package:
	umask 0; sudo TMP=$(TMP) sh zile.SlackBuild

tarball:
	cd .. ; $(TAR) --create --verbose --verify --file=$(TARBALL) $(TARBALL_FILES)

### end of file
