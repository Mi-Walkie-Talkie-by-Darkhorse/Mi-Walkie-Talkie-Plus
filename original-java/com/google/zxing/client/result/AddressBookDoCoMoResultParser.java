package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser {
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("MECARD:")) {
            return null;
        }
        String[] matchDoCoMoPrefixedField = matchDoCoMoPrefixedField("N:", massagedText, true);
        if (matchDoCoMoPrefixedField == null) {
            return null;
        }
        String parseName = parseName(matchDoCoMoPrefixedField[0]);
        String matchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField("SOUND:", massagedText, true);
        String[] matchDoCoMoPrefixedField2 = matchDoCoMoPrefixedField("TEL:", massagedText, true);
        String[] matchDoCoMoPrefixedField3 = matchDoCoMoPrefixedField("EMAIL:", massagedText, true);
        String matchSingleDoCoMoPrefixedField2 = matchSingleDoCoMoPrefixedField("NOTE:", massagedText, false);
        String[] matchDoCoMoPrefixedField4 = matchDoCoMoPrefixedField("ADR:", massagedText, true);
        String matchSingleDoCoMoPrefixedField3 = matchSingleDoCoMoPrefixedField("BDAY:", massagedText, true);
        if (!isStringOfDigits(matchSingleDoCoMoPrefixedField3, 8)) {
            matchSingleDoCoMoPrefixedField3 = null;
        }
        String[] matchDoCoMoPrefixedField5 = matchDoCoMoPrefixedField("URL:", massagedText, true);
        return new AddressBookParsedResult(maybeWrap(parseName), null, matchSingleDoCoMoPrefixedField, matchDoCoMoPrefixedField2, null, matchDoCoMoPrefixedField3, null, null, matchSingleDoCoMoPrefixedField2, matchDoCoMoPrefixedField4, null, matchSingleDoCoMoPrefixedField("ORG:", massagedText, true), matchSingleDoCoMoPrefixedField3, null, matchDoCoMoPrefixedField5, null);
    }

    private static String parseName(String str) {
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            return str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
        }
        return str;
    }
}
