CANFESTIVAL_PATH        := canopen_stack_canfestival

CANFESTIVAL_SRC         := $(CANFESTIVAL_PATH)/src/dcf.c \
                           $(CANFESTIVAL_PATH)/src/emcy.c \
                           $(CANFESTIVAL_PATH)/src/lifegrd.c \
                           $(CANFESTIVAL_PATH)/src/lss.c \
                           $(CANFESTIVAL_PATH)/src/nmtMaster.c \
                           $(CANFESTIVAL_PATH)/src/nmtSlave.c \
                           $(CANFESTIVAL_PATH)/src/objacces.c \
                           $(CANFESTIVAL_PATH)/src/pdo.c \
                           $(CANFESTIVAL_PATH)/src/sdo.c \
                           $(CANFESTIVAL_PATH)/src/states.c \
						   $(CANFESTIVAL_PATH)/src/sync.c 
#                           $(CANFESTIVAL_PATH)/src/symbols.c \     relevant only to linux / windows builds
#                           $(CANFESTIVAL_PATH)/src/timer.c   replaced by canFestivalTimers.c


CANFESTIVAL_INC         := $(CANFESTIVAL_PATH)/include
