package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

final class AI01AndOtherAIs extends AI01decoder {
    private static final int HEADER_SIZE = 4;

    AI01AndOtherAIs(BitArray bitArray) {
        super(bitArray);
    }

    public String parseInformation() throws NotFoundException, FormatException {
        StringBuilder sb = new StringBuilder();
        sb.append("(01)");
        int length = sb.length();
        sb.append(getGeneralDecoder().extractNumericValueFromBitArray(4, 4));
        encodeCompressedGtinWithoutAI(sb, 8, length);
        return getGeneralDecoder().decodeAllCodes(sb, 48);
    }
}
