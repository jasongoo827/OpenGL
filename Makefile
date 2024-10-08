APP_NAME = OpenGL
BUILD_DIR = ./bin
CPP_FILES = ./src/main.cpp ./src/getting_started/Shader.cpp
GLAD_C := ./src/vendors/GLFW/glad/glad.c

APP_DEFINES:=
APP_INCLUDES:= -I./src/vendors/GLFW -I./src/vendors/glm -framework Cocoa -framework OpenGL -framework IOKit -DGL_SILENCE_DEPRECATION
APP_LINKERS:= -L./src/vendors/GLFW/lib -lglfw3 -lc++

build:
	clang $(CPP_FILES) $(GLAD_C) -o $(BUILD_DIR)/$(APP_NAME) $(APP_INCLUDES) $(APP_LINKERS)