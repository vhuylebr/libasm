#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

#include <string.h>
#include <unistd.h>

// int strlen(char *str);
// void *memset(void *str, int c, size_t n);
// void *memmove(char *dest, char *src, size_t n);
// void *memcpy(char *dest, char *src, size_t n);
// size_t strcspn(char *dest, char *src);

// void *strcmp(char *dest, char *src);
// void *strcasecmp(char *dest, char *src);
// void *strncmp(char *dest, char *src, size_t n);

// char *strchr(char *str, int c);
// char *strpbrk(char *dest, char *src);
// void *rindex(const char *str, int c);
// char *strstr(char *dest, char *src);

// int write(int i, const char *str, int c);

int main()
{
	int i = 10;
	char str[] = "hsdkqjdksjqksd";
	char *str2 = "ffffffffffffffffffffffff";

	write(1, "coucou", 2);
	printf("strlen %i\n", strlen("coucoucoucou"));
	printf("strchr %s\n", strchr("coucou", 'u'));
	puts("salut");
	printf("memcpy %s\n", memcpy(str, str2, 3));
	printf("strcmp %i\n", strcmp(str, str2));
	printf("strcmp %i\n", strcmp("abcdef", "abc"));
	printf("strcmp %i\n", strcmp("abcdef", "abc"));
	printf("strcmp %i\n", strcmp("abc", "abc"));
	printf("memset %s\n", memset(str, 'c', i));
	printf("memset %s\n", memset(str, 'd', i));

	char str4[] = "memmove can be very useful......";
	printf("memmove1 %s=mmove can bery useful.....\n", memmove(str4 + 5, str4 + 2, 11));
	char str5[] = "memmove can be very useful......";
	printf("memmove2 %s=ve can be ve very useful......\n", memmove(str5 + 2, str5 + 5, 11));
	char str6[] = "memmove can be very useful......";
	printf("memmove2 %s=aaamove can be very useful......\n", memmove(str6, "aaaaaa", 3));

	printf("memmove1 %s=ve can be ve very useful......\n", memmove(str5 + 2, str5 + 5, 11));

	printf("memset %s\n", memset(str, 'c', i));
	// printf("memset %s\n", memset(str2, 'd', i));
	printf("memmove %s\n", memmove(str, str + 3, 4));
	printf("strncmp %i\n", strncmp("valerian", "valerian", 4));
	printf("strcasecmp %i\n", strcasecmp("VALERIANg", "valeriaNg"));
	printf("rindex %s\n", rindex("coucou", 'c'));
	printf("rindex %s\n", rindex("coucou", 'o'));
	printf("rindex %s\n", rindex("coucou", 'k'));
	printf("strstr %s\n", strstr("coucou", "ou"));
	printf("strstr %s\n", strstr("coucou les amis", "mist"));
	printf("%i\n", strstr("meule", "ou"));
	printf("strstr %s\n", strstr("meule", "ou"));

	printf("strpbrk %s\n", strpbrk("coucou les amis", "abc"));
	printf("strpbrk %s\n", strpbrk("coucou les amis", "mist"));
	printf("strpbrk %s\n", strpbrk("coucou les amis", "t"));
	
	printf("strcspn %i\n", strcspn("coucou les amis", "abc"));
	printf("strcspn %i\n", strcspn("coucou les amis", "mist"));
	printf("strcspn %i\n", strcspn("coucou les amis", "t"));
	return (0);
}
