package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class BookmarkDoCoMoResultParser extends AbstractDoCoMoResultParser {
    public URIParsedResult parse(Result result) {
        String text = result.getText();
        if (!text.startsWith("MEBKM:")) {
            return null;
        }
        String matchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField("TITLE:", text, true);
        String[] matchDoCoMoPrefixedField = matchDoCoMoPrefixedField("URL:", text, true);
        if (matchDoCoMoPrefixedField == null) {
            return null;
        }
        String str = matchDoCoMoPrefixedField[0];
        if (URIResultParser.isBasicallyValidURI(str)) {
            return new URIParsedResult(str, matchSingleDoCoMoPrefixedField);
        }
        return null;
    }
}
