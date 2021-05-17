#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 reverseNum = 0;
    for (int i = 0; i < 8; i++) {
        UInt8 tempOne = (UInt8) (n & (1 << i));
        if (tempOne) {
            reverseNum |= (1 << ((8 - 1) - i));
        }
    }
    return reverseNum;
}
