#include <stdio.h>
//#include <cs50.h>

int main(void)
{
    int n;
    scanf("%dEnter Number: ",&n);
    for (int i=n-1; i>=1; i--)
    {
        for(int j=1;j<=i-1;j++)
        {
            printf(" ");
        }
        for (int k=1;k<=n-i+1;k++)
        {
                printf("#");
                
        }
            printf("\n");
           
        }
}
