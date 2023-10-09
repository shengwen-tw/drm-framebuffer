CC = riscv32-unknown-linux-gnu-gcc
CFLAGS = -O0 -ggdb -pedantic -Wall -I./drm -I./drm/include/drm
LDFLAGS = -L../buildroot/output/target/usr/lib -ldrm

OBJ = main.o framebuffer.o
PROGNAME = drm-framebuffer

all: $(OBJ)
	$(CC) $(CFLAGS) -o $(PROGNAME) $(OBJ) $(LDFLAGS)

clean:
	@echo "Clean object files"
	@rm -f $(OBJ)
	@rm -f $(PROGNAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $<
