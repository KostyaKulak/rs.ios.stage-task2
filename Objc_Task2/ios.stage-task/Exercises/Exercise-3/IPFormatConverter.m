#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSString *result = @"";
    if (numbersArray == nil || numbersArray.count == 0) {
        return result;
    }
    UInt8 i = 0;
    UInt8 count = (UInt8) (numbersArray.count <= 4 ? numbersArray.count : 4);
    while (i < count) {
        NSNumber *item = numbersArray[i];
        if (item.intValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if (item.intValue < 0) {
            return @"Negative numbers are not valid for input.";
        }
        NSString *section = item.stringValue;
        if (i < 4 - 1) {
            section = [section stringByAppendingString:@"."];
        }
        result = [result stringByAppendingString:section];
        i += 1;
    }
    if (count < 4) {
        for (int k = 0; k < 4 - count; k++) {
            NSString *adding = k == 4 - count - 1 ? @"0" : @"0.";
            result = [result stringByAppendingString:adding];
        }
    }
    return result;
}

@end
