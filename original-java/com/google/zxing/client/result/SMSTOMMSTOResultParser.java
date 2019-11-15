package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class SMSTOMMSTOResultParser extends ResultParser {
    public SMSParsedResult parse(Result result) {
        String str;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("smsto:") && !massagedText.startsWith("SMSTO:") && !massagedText.startsWith("mmsto:") && !massagedText.startsWith("MMSTO:")) {
            return null;
        }
        String substring = massagedText.substring(6);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            str = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
        } else {
            str = null;
        }
        return new SMSParsedResult(substring, (String) null, (String) null, str);
    }
}
