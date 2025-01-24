CXX = g++
CXXFLAGS = -std=c++17 -g -Wall -I. -Isrc/app/crypto -Isrc/app/fileHandling -Isrc/app/processes


# Directories
SRC_DIR = src/app
CRYPTO_DIR = $(SRC_DIR)/crypto
FILE_DIR = $(SRC_DIR)/fileHandling
PROC_DIR = $(SRC_DIR)/processes


# Targets
MAIN_TARGET = encrypt_decrypt
CRYPTION_TARGET = cryption


# Sources
MAIN_SRC = main.cpp \
           $(PROC_DIR)/ProcessManagement.cpp \
           $(FILE_DIR)/IO.cpp \
           $(FILE_DIR)/ReadEnv.cpp \
           $(CRYPTO_DIR)/Cryption.cpp

CRYPTION_SRC = $(CRYPTO_DIR)/CryptionMain.cpp \
               $(CRYPTO_DIR)/Cryption.cpp \
               $(FILE_DIR)/IO.cpp \
               $(FILE_DIR)/ReadEnv.cpp


# Objects
MAIN_OBJ = ${MAIN_SRC:.cpp=.o}
CRYPTION_OBJ = ${CRYPTION_SRC:.cpp=.o}


# Rules
all: ${MAIN_TARGET} ${CRYPTION_TARGET}

${MAIN_TARGET}: ${MAIN_OBJ}
	${CXX} ${CXXFLAGS} $^ -o $@

${CRYPTION_TARGET}: ${CRYPTION_OBJ}
	${CXX} ${CXXFLAGS} $^ -o $@

%.o: %.cpp
	${CXX} ${CXXFLAGS} -c $< -o $@

clean:
	rm -f ${MAIN_OBJ} ${CRYPTION_OBJ} ${MAIN_TARGET} ${CRYPTION_TARGET}

.PHONY: clean all
