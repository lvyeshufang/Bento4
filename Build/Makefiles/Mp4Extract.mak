##########################################################################
#
#    Mp4Extract Program
#
#    (c) 2001-2004 Gilles Boccon-Gibod
#
##########################################################################
all: mp4extract

##########################################################################
# includes
##########################################################################
include $(BUILD_ROOT)/Makefiles/Crypto.exp
include $(BUILD_ROOT)/Makefiles/Core.exp
include $(BUILD_ROOT)/Makefiles/System.exp
include $(BUILD_ROOT)/Makefiles/MetaData.exp

##########################################################################
# targets
##########################################################################
TARGET_SOURCES = Mp4Extract.cpp

##########################################################################
# make path
##########################################################################
VPATH += $(SOURCE_ROOT)/Apps/Mp4Extract

##########################################################################
# includes
##########################################################################
include $(BUILD_ROOT)/Makefiles/Rules.mak

##########################################################################
# rules
##########################################################################
mp4extract: $(TARGET_OBJECTS) $(TARGET_LIBRARY_FILES)
	$(LINK) $(TARGET_OBJECTS) $(LIBRARIES_CPP) -o $@ 


