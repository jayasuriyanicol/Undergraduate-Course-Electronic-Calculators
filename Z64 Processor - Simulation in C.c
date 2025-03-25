#include <stdio.h>

#define MEMORY_SIZE 256

unsigned int memory[MEMORY_SIZE];

void store_value(int address, int value) {
    if (address >= 0 && address < MEMORY_SIZE) {
        memory[address] = value;
    }
}

int load_value(int address) {
    if (address >= 0 && address < MEMORY_SIZE) {
        return memory[address];
    }
    return -1;
}

int main() {
    store_value(10, 42);
    printf("Value at address 10: %d\n", load_value(10));
    return 0;
}
