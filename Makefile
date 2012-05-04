# ClockLCD Makefile
# Author:			Corey Davyduke
# Created:			2012-01-09
# Modified:			2012-05-04
# Description:		This is the Makefile for my LCD clock
#					project.

# Use the cme11 board configuration files (compilation flags
# and specific includes).
override TARGET_BOARD=m68hc11-corey

# Makefile is now dependent on an environment variable being set
# for GEL_BASEDIR
include $(GEL_BASEDIR)/config/make.defs

CSRCS=ClockLCD.c

OBJS=$(CSRCS:.c=.o)

PROGS=ClockLCD.elf

all::	$(PROGS) ClockLCD.s19

ClockLCD.elf:	$(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(GEL_LIBS)

install::	$(PROGS)
	$(INSTALL) $(PROGS) $(GEL_INSTALL_BIN)

