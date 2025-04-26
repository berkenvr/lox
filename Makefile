SRC_DIR = src
PKG = lox
CLASS_DIR = bin

SOURCES = $(wildcard $(SRC_DIR)/$(PKG)/*.java)

ifeq ($(OS), Windows_NT)
	MKDIR_P = cmd /C "if not exist $(CLASS_DIR) mkdir $(CLASS_DIR)"
	RM = cmd /C "rmdir /S /Q $(CLASS_DIR)"
else
	MKDIR_P = mkdir -p $(CLASS_DIR)
	RM = rm -rf $(CLASS_DIR)
endif

default: compile

compile:
	@$(MKDIR_P)
	javac -d $(CLASS_DIR) $(SOURCES)

run: compile
	@java -cp $(CLASS_DIR) $(PKG).Lox

clean:
	$(RM)

.PHONY: default compile run clean
