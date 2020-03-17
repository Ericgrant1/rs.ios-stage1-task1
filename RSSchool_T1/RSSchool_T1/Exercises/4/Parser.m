#import "Parser.h"

@implementation Parser

// Complete the parseString function below.

- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSString *openParentheses = @"(<[";
    NSString *closeParantheses = @")>]";
    NSMutableString *str = [NSMutableString stringWithString:string];
    NSMutableArray<NSString*>* value = [NSMutableArray arrayWithCapacity:5];
    int total = 0;
    for (int i = 0; i < [string length]; i++){
        for(int j = 0; j < 3; j++){
            if ([str characterAtIndex:i] == [openParentheses characterAtIndex:j]) {
                for (int s = i+1; s<[string length]; s++) {
                    if ([str characterAtIndex:s] == [openParentheses characterAtIndex:j]) {
                        total++;
                        continue;
                    }
                    if ([str characterAtIndex:s] == [closeParantheses characterAtIndex:j] && total != 0) {
                        total--;
                        continue;
                    }
                    if ([str characterAtIndex:s] == [closeParantheses characterAtIndex:j] && total == 0) {
                        [value addObject:[string substringWithRange:NSMakeRange(i+1, s-i-1)]];
                        break;
                    }
                }
            }
        }
    }
    return value;
}

@end
