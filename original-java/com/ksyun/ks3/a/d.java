package com.ksyun.ks3.a;

import com.loopj.android.http.RequestParams;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.ParseException;

/* compiled from: ModelUtil */
public class d {
    public static Header[] a(Map<String, String> map) {
        Iterator it = map.entrySet().iterator();
        Header[] headerArr = new Header[map.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return headerArr;
            }
            final Entry entry = (Entry) it.next();
            headerArr[i2] = new Header() {
                public String getValue() {
                    return (String) entry.getValue();
                }

                public String getName() {
                    return (String) entry.getKey();
                }

                public HeaderElement[] getElements() throws ParseException {
                    return null;
                }
            };
            i = i2 + 1;
        }
    }

    public static RequestParams b(Map<String, String> map) {
        return new RequestParams(map);
    }
}
