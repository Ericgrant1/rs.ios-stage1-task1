#import "T1Array.h"

@implementation T1Array

// Complete the following fuction

- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *happyArr = [NSMutableArray arrayWithArray:sadArray];
    for (int i = 0; i < happyArr.count; i++) {
        if (i == happyArr.count - 1) {
            break;
        }
        if (i != 0) {
            NSNumber *current = happyArr[i];
            NSNumber *previous = happyArr[i - 1];
            NSNumber *next = happyArr[i + 1];
            NSInteger total = previous.intValue + next.intValue;
            if (current.intValue > total) {
                [happyArr removeObjectAtIndex:i];
                i = -1;
            }
        }
    }
    return happyArr;
}

@end
