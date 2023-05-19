package com.xiaomi.push;

import android.util.Pair;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.xiaomi.push.fg */
/* loaded from: classes2.dex */
public class C6151fg {

    /* renamed from: a */
    private static Vector<Pair<String, Long>> f21530a = new Vector<>();

    /* renamed from: a */
    private static ConcurrentHashMap<String, Long> f21531a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static String m2936a() {
        StringBuilder sb = new StringBuilder();
        synchronized (f21530a) {
            for (int i = 0; i < f21530a.size(); i++) {
                Pair<String, Long> elementAt = f21530a.elementAt(i);
                sb.append((String) elementAt.first);
                sb.append(Constants.COLON_SEPARATOR);
                sb.append(elementAt.second);
                if (i < f21530a.size() - 1) {
                    sb.append(";");
                }
            }
            f21530a.clear();
        }
        return sb.toString();
    }
}
