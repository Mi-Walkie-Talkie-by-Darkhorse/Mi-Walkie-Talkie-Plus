package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class URIResultParser extends ResultParser {
    private static final Pattern URL_WITHOUT_PROTOCOL_PATTERN = Pattern.compile("([a-zA-Z0-9\\-]+\\.){1,6}[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");
    private static final Pattern URL_WITH_PROTOCOL_PATTERN = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");

    public URIParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (massagedText.startsWith("URL:") || massagedText.startsWith("URI:")) {
            return new URIParsedResult(massagedText.substring(4).trim(), null);
        }
        String trim = massagedText.trim();
        if (isBasicallyValidURI(trim)) {
            return new URIParsedResult(trim, null);
        }
        return null;
    }

    static boolean isBasicallyValidURI(String str) {
        if (str.contains(Token.SEPARATOR)) {
            return false;
        }
        Matcher matcher = URL_WITH_PROTOCOL_PATTERN.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = URL_WITHOUT_PROTOCOL_PATTERN.matcher(str);
        if (!matcher2.find() || matcher2.start() != 0) {
            return false;
        }
        return true;
    }
}
