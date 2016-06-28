//
//  main.m
//  Word_Effects
//
//  Created by Anthony Ma on 2016-06-27.
//  Copyright © 2016 Anthony Ma. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    char choice;
    printf("Choose an operation to perform on a String:\n1.Uppercase\n2.Lowercase\n3.Numberize\n4.Canadianize\n5.Respond\n6.De-Space It\n");
    fgets(&choice, 3, stdin);
    int c = choice - '0';
    //printf("Your integer is %d", c); confirm integer
    char inputChars[255];
    printf("Input a String:");
    fgets(inputChars, 255, stdin);
    printf("Your string is %s\n", inputChars);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    NSLog(@"Input was: %@", inputString);
    
    return 0;
}
