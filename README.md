# File Cryptor
A simple C++ application for encrypting and decrypting files in bulk.


## Features
- Encrypt or decrypt all files within a specified folder.
- Easy-to-use command-line interface.
- Built with modern C++ standards (C++17) for performance and reliability.



## How to use:
### 1. Clone the Repository
```bash
git clone https://github.com/SuperSection/file-cryptor
cd file-cryptor
```

### 2. Define .env file in the working directory
Provide any arbitrary number of your choice, to use it as a secret for encryption & decryption
```bash
echo "1234567" > .env
```

### 3. Build the Executables
Use the make command to build the required binaries:
```bash
make all
```

### 4. Run the Application
To encrypt or decrypt files in a folder, run:
```bash
./encrypt_decrypt
```

### 5. Clean the Build
To remove all compiled files and executables:
```bash
make clean
```



## Requirements
- Compiler: g++ (with C++17 support)
- Build Tool: make
- Debugger (optional): gdb or lldb for debugging.


## Author
Developed by Soumo Sarkar.
Feel free to reach out with feedback or questions!
