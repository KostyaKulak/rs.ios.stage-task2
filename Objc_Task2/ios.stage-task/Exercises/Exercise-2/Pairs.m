#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    for (NSUInteger i = 0; i < array.count; i++) {
        for (NSUInteger j = i + 1; j < array.count; j++) {
            if (array[j].intValue - array[i].intValue == number.intValue) {
                count += 1;
            }
        }
    }
    return count;
}

@end
