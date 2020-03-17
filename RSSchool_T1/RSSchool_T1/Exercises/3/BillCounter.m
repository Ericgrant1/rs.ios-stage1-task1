#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction

- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    int total = 0;
    for (NSNumber *cost in bill) {
        total += [cost intValue];
    }
    if ((total - [bill[index] intValue]) / 2 == [sum intValue]) {return @"Bon Appetit";}
    else
        return [NSString stringWithFormat:@"%i", ([sum intValue] - ((total - [bill[index] intValue])/2))];
}

@end
