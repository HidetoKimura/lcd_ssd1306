obj-m := lcd-ssd1306.o
lcd-ssd1306-y = ssd1306_i2c.o ezfont.o

all:
	make -C $(KERNEL_SRC) M=$(shell pwd) modules

clean:
	rm -rf *.o *.ko *.mod *.mod.c *.order *.symvers .*.cmd
