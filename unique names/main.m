//
//  main.m
//  unique names
//
//  Created by Жека Г on 2/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *array=[[NSMutableArray alloc]init];       
        
       
        while(true){
            char buf[15];
            
            printf("Enter name:");
            
            gets(buf);
            NSString *string=[NSString stringWithCString:buf encoding:NSASCIIStringEncoding];          
            [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if(string.length==0 || string==(id)[NSNull null] || [string isEqualToString:@"(null)"] || string==nil) {
                break; 
            } else{  
            if([array containsObject:string]){
                    printf("This name is already in the base!\n");                    
                
                } else{
                    [array addObject:string];  
                    
                    
                }    
            }            
        
        
        }
        printf("Unique name list:\n");      
        NSLog(@"%@",array);      
        
        
    }
    
    return 0;
}

