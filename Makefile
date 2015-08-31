#------------------------------------------------------------------------------
# Makefile
#
# Project Name: cloud masking
# Makefile that will call 'make X' in subdirectories.
# Assumes the following Makefiles exist:
#	l4-7_cfmask/Makefile
#	not-validated-prototype-l8_cfmask/Makefile
#	scripts/Makefile
#------------------------------------------------------------------------------
.PHONY: all install clean all-script install-script clean-script all-static-data install-static-data clean-static-data all-l4-7 install-l4-7 clean-l4-7

include make.config

MAKEFILE_NAME = Makefile

DIR_L4-7 = l4-7_cfmask
DIR_L8 = not-validated-prototype-l8_cfmask

all: all-script all-static-data all-l4-7 all-l8

install: install-script install-static-data install-l4-7 install-l8

clean: clean-script clean-static-data clean-l4-7 clean-l8

#------------------------------------------------------------------------------
all-script:
	echo "make all in scripts"; \
        (cd scripts; $(MAKE) all -f $(MAKEFILE_NAME));

install-script:
	echo "make install in scripts"; \
        (cd scripts; $(MAKE) install -f $(MAKEFILE_NAME));

clean-script:
	echo "make clean in scripts"; \
        (cd scripts; $(MAKE) clean -f $(MAKEFILE_NAME));

#------------------------------------------------------------------------------
all-static-data:
	echo "make all in static_data"; \
        (cd static_data; $(MAKE) all -f $(MAKEFILE_NAME));

install-static-data:
	echo "make install in static_data"; \
        (cd static_data; $(MAKE) install -f $(MAKEFILE_NAME));

clean-static-data:
	echo "make clean in static_data"; \
        (cd static_data; $(MAKE) clean -f $(MAKEFILE_NAME));

#------------------------------------------------------------------------------
all-l8:
	echo "make all in cfmask_l8"; \
        (cd $(DIR_L8); $(MAKE) all -f $(MAKEFILE_NAME));

install-l8:
	echo "make install in cfmask_l8"; \
        (cd $(DIR_L8); $(MAKE) install -f $(MAKEFILE_NAME));

clean-l8:
	echo "make clean in cfmask_l8"; \
        (cd $(DIR_L8); $(MAKE) clean -f $(MAKEFILE_NAME));

#------------------------------------------------------------------------------
all-l4-7:
	echo "make all in cfmask_l4-7"; \
        (cd $(DIR_L4-7); $(MAKE) all -f $(MAKEFILE_NAME));

install-l4-7:
	echo "make install in cfmask_l4-7"; \
        (cd $(DIR_L4-7); $(MAKE) install -f $(MAKEFILE_NAME));

clean-l4-7:
	echo "make clean in cfmask_l4-7"; \
        (cd $(DIR_L4-7); $(MAKE) clean -f $(MAKEFILE_NAME));

