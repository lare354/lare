#include <stdio.h>

int main() {
	int c, last_was_digit=0;
	while ( (c=getchar()) != EOF ) {
		if ( (c>47) && (c<58) ) { putchar(c); last_was_digit = 1; }
	}
	return 0;
}
