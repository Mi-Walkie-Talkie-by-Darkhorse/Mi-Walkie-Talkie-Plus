package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class WifiResultParser extends ResultParser {
    public WifiParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("WIFI:")) {
            return null;
        }
        String matchSinglePrefixedField = matchSinglePrefixedField("S:", massagedText, ';', false);
        if (matchSinglePrefixedField == null || matchSinglePrefixedField.isEmpty()) {
            return null;
        }
        String matchSinglePrefixedField2 = matchSinglePrefixedField("P:", massagedText, ';', false);
        String matchSinglePrefixedField3 = matchSinglePrefixedField("T:", massagedText, ';', false);
        if (matchSinglePrefixedField3 == null) {
            matchSinglePrefixedField3 = "nopass";
        }
        return new WifiParsedResult(matchSinglePrefixedField3, matchSinglePrefixedField, matchSinglePrefixedField2, Boolean.parseBoolean(matchSinglePrefixedField("H:", massagedText, ';', false)));
    }
}
