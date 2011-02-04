#include <stdio.h>

int main( int argc, char *argv[] )
{
    int accumulator = 0;
    
    for ( int i = 0; i < 1000; i += 1 ) {
        if( i % 5 == 0 || i % 3 == 0 ) {
            accumulator += i;
        }
    }

    printf("The solution is %i\n", accumulator);
    
    return 0;
}
