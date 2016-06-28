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
    NSLog(@"%@", inputString);
    
    if (c == 1){
        NSString *uppercase = [inputString uppercaseString];
        NSLog(@"%@", uppercase);
    }
    if (c == 2){
        NSString *lowercase = [inputString lowercaseString];
        NSLog(@"%@", lowercase);
    }
    //if (c == 3){
      //  if (int t =
    //}
    if (c == 4){
        NSString *appended = [inputString stringByAppendingString:@" eh"];
        NSLog(@"%@", appended);
    }
    if (c == 5){
        NSString *lastChar = [inputString substringFromIndex:[inputString length] - 2];
        if ([lastChar isEqual: @"?\n"]){
            NSLog(@"I don't know");
            }
        else if ([lastChar isEqual: @"!\n"]){
            NSLog(@"Whoa calm down");
            }
        else {
            NSLog(@"Nothing");
            }
 
        
    }
    //NSLog(@"Input was: %@", inputString);
    
    return 0;
}
