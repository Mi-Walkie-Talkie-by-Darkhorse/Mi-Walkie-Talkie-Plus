package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class SMTPResultParser extends ResultParser {
    public EmailAddressParsedResult parse(Result result) {
        String str;
        String str2;
        String str3;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("smtp:") && !massagedText.startsWith("SMTP:")) {
            return null;
        }
        String substring = massagedText.substring(5);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            str2 = substring.substring(indexOf + 1);
            String substring2 = substring.substring(0, indexOf);
            int indexOf2 = str2.indexOf(58);
            if (indexOf2 >= 0) {
                str = str2.substring(indexOf2 + 1);
                str2 = str2.substring(0, indexOf2);
                str3 = substring2;
            } else {
                str = null;
                str3 = substring2;
            }
        } else {
            str = null;
            str2 = null;
            str3 = substring;
        }
        return new EmailAddressParsedResult(new String[]{str3}, null, null, str2, str);
    }
}
