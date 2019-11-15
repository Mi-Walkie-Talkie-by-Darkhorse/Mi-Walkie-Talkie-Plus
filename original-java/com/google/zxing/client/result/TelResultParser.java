package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class TelResultParser extends ResultParser {
    public TelParsedResult parse(Result result) {
        String str;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("tel:") && !massagedText.startsWith("TEL:")) {
            return null;
        }
        if (massagedText.startsWith("TEL:")) {
            str = "tel:" + massagedText.substring(4);
        } else {
            str = massagedText;
        }
        int indexOf = massagedText.indexOf(63, 4);
        return new TelParsedResult(indexOf < 0 ? massagedText.substring(4) : massagedText.substring(4, indexOf), str, null);
    }
}
