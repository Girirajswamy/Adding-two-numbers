#include<stdio.h>
#include"addition.h"
int main(){
    int a,b;
    printf("enter the value1\n");
    scanf("%d",&a);
    printf("enter the value2\n");
    scanf("%d",&b);
    printf("addition of %d and %d = %d",a,b,addition(a,b));
}