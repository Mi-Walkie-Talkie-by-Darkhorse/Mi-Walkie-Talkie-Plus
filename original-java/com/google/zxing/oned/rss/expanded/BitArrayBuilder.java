package com.google.zxing.oned.rss.expanded;

import com.google.zxing.common.BitArray;
import java.util.List;

final class BitArrayBuilder {
    private BitArrayBuilder() {
    }

    static BitArray buildBitArray(List<ExpandedPair> list) {
        int i;
        int size = (list.size() << 1) - 1;
        if (((ExpandedPair) list.get(list.size() - 1)).getRightChar() == null) {
            i = size - 1;
        } else {
            i = size;
        }
        BitArray bitArray = new BitArray(i * 12);
        int value = ((ExpandedPair) list.get(0)).getRightChar().getValue();
        int i2 = 11;
        int i3 = 0;
        while (i2 >= 0) {
            if (((1 << i2) & value) != 0) {
                bitArray.set(i3);
            }
            i2--;
            i3++;
        }
        int i4 = i3;
        for (int i5 = 1; i5 < list.size(); i5++) {
            ExpandedPair expandedPair = (ExpandedPair) list.get(i5);
            int value2 = expandedPair.getLeftChar().getValue();
            int i6 = 11;
            while (i6 >= 0) {
                if (((1 << i6) & value2) != 0) {
                    bitArray.set(i4);
                }
                i6--;
                i4++;
            }
            if (expandedPair.getRightChar() != null) {
                int value3 = expandedPair.getRightChar().getValue();
                for (int i7 = 11; i7 >= 0; i7--) {
                    if (((1 << i7) & value3) != 0) {
                        bitArray.set(i4);
                    }
                    i4++;
                }
            }
        }
        return bitArray;
    }
}
