#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.

- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {

    NSMutableArray *resultString = [[NSMutableArray alloc] initWithArray:@[]];
    [s enumerateSubstringsInRange:(NSRange){0, [s length]} options: NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substr, NSRange substrRange, NSRange coverageRange, BOOL * _Nonnull stop) {[resultString addObject:substr];}];

    int variableValue = 0;
    long maxChanges = 0;

    for (long i = ([n intValue] / 2); i >= 0; i -= 1) {

        NSInteger leftNum = [[resultString objectAtIndex: i] integerValue];
        NSInteger rightNum = [[resultString objectAtIndex: ([n intValue] - i - 1) ] integerValue];
        if (leftNum != rightNum) {
            long valueMax = MAX(maxChanges,MAX(leftNum, rightNum));
            maxChanges = valueMax;
            if (leftNum != valueMax) {
                variableValue += 1;
            }
            if (rightNum != valueMax) {
                variableValue += 1;
            }
            resultString[i] = [NSString stringWithFormat:@"%ld", valueMax];
            resultString[([n intValue] - i - 1)] = [NSString stringWithFormat:@"%ld", valueMax];
        }

    }

    return  variableValue == [k intValue] ? [resultString componentsJoinedByString:@""] : @"-1";
}

@end
