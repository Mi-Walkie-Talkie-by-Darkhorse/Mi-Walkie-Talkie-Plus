package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.mi.mimsgsdk.database.IMessageDao;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class SMSMMSResultParser extends ResultParser {
    public SMSParsedResult parse(Result result) {
        String str;
        String str2;
        String str3;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("sms:") && !massagedText.startsWith("SMS:") && !massagedText.startsWith("mms:") && !massagedText.startsWith("MMS:")) {
            return null;
        }
        Map parseNameValuePairs = parseNameValuePairs(massagedText);
        boolean z = false;
        if (parseNameValuePairs == null || parseNameValuePairs.isEmpty()) {
            str = null;
            str2 = null;
        } else {
            String str4 = (String) parseNameValuePairs.get("subject");
            str = (String) parseNameValuePairs.get(IMessageDao.BODY);
            str2 = str4;
            z = true;
        }
        int indexOf = massagedText.indexOf(63, 4);
        if (indexOf < 0 || !z) {
            str3 = massagedText.substring(4);
        } else {
            str3 = massagedText.substring(4, indexOf);
        }
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int indexOf2 = str3.indexOf(44, i + 1);
            if (indexOf2 > i) {
                addNumberVia(arrayList, arrayList2, str3.substring(i + 1, indexOf2));
                i = indexOf2;
            } else {
                addNumberVia(arrayList, arrayList2, str3.substring(i + 1));
                return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
        }
    }

    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        String str2 = null;
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
            return;
        }
        collection.add(str.substring(0, indexOf));
        String substring = str.substring(indexOf + 1);
        if (substring.startsWith("via=")) {
            str2 = substring.substring(4);
        }
        collection2.add(str2);
    }
}
