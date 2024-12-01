
# compile the program  
# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g 

# Source files
all : client nm ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8 ss9 ss10

client : client.c client.h
	$(CC) $(CFLAGS) client.c -o client

nm : namingserver.c trie.c requests.c lru.c log.c lru.h trie.h requests.h namingserver.h
	$(CC) $(CFLAGS) namingserver.c trie.c requests.c lru.c log.c -o nm

ss1: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss1 -DPORT=8114

ss2: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss2 -DPORT=8116

ss3: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss3 -DPORT=8118

ss4: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss4 -DPORT=8120

ss5: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss5 -DPORT=8122

ss6: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss6 -DPORT=8124

ss7: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss7 -DPORT=8126

ss8: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss8 -DPORT=8128

ss9: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss9 -DPORT=8130

ss10: storageserver.c ss_functions.c lru.c lru.h ss_functions.h storageserver.h
	$(CC) $(CFLAGS) storageserver.c ss_functions.c lru.c -o ss10 -DPORT=8132

clean:
	rm -f client nm  ss1 ss2 ss3 ss4 ss5 ss6 ss7 ss8 ss9 ss10