#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.

- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {

    NSNumber *sum = [array valueForKeyPath:@"@sum.self"];
    NSArray<NSNumber*>* arr = [array sortedArrayUsingSelector:@selector(compare:)];
    NSInteger min = [sum intValue] - [arr.lastObject intValue];
    NSInteger max = [sum intValue] - [arr.firstObject intValue];
    return @[[NSNumber numberWithInteger:min], [NSNumber numberWithInteger:max]];
}

@end
