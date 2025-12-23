//Write a C program to create a file, write a string into it,close 
//the file, then open the file again to read and display its contents.
#include <stdio.h>
int main()
{
    FILE *fp;
    char str[100];
    // Create a file and write into it
    fp=fopen("myfile.txt","w");
    if(fp==NULL)
    {
        printf("File cannot be created.\n");
        return 1;
    }
    printf("Enter write into the file ");
    gets(str);   // for simple exam use

    fputs(str,fp);
    fclose(fp);

    // Open the file again for reading
    fp = fopen("myfile.txt","r");
    if (fp == NULL)
    {
        printf("File cannot be open\n");
        return 1;
    }
    printf("\nContents of the file:\n");
    while (fgets(str,sizeof(str),fp)!=NULL)
    {
        printf("%s",str);
    }
    fclose(fp);
}

