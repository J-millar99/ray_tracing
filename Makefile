NAME = a.out
GCC = gcc
SRCS_DIR = srcs/
INCS_DIR = incs/

SRC = main.c \
	print.c \
	ray.c \
	scene.c \
	vec3_utils.c \
	hit_sphere.c \
	object_create.c \
	normal.c \
	hit.c \
	object_utils.c \
	phong_lighting.c \

INC = print.h \
	scene.h \
	structures.h \
	trace.h \
	utils.h \

INCS = $(addprefix $(INCS_DIR), $(INC))
SRCS = $(addprefix $(SRCS_DIR), $(SRC))

$(NAME) :
	$(GCC) $(SRCS)
	./a.out > rgb.ppm
	@open rgb.ppm

clean :
	rm -rf $(NAME) rgb.ppm