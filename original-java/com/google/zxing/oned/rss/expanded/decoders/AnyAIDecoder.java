package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

final class AnyAIDecoder extends AbstractExpandedDecoder {
    private static final int HEADER_SIZE = 5;

    AnyAIDecoder(BitArray bitArray) {
        super(bitArray);
    }

    public String parseInformation() throws NotFoundException, FormatException {
        return getGeneralDecoder().decodeAllCodes(new StringBuilder(), 5);
    }
}
