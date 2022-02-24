package com.xiaomi.push;

import android.util.Pair;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class fg {

    /* renamed from: a  reason: collision with root package name */
    private static Vector<Pair<String, Long>> f8940a = new Vector<>();

    /* renamed from: a  reason: collision with other field name */
    private static ConcurrentHashMap<String, Long> f346a = new ConcurrentHashMap<>();

    public static String a() {
        StringBuilder sb = new StringBuilder();
        synchronized (f8940a) {
            for (int i = 0; i < f8940a.size(); i++) {
                Pair<String, Long> elementAt = f8940a.elementAt(i);
                sb.append((String) elementAt.first);
                sb.append(Constants.COLON_SEPARATOR);
                sb.append(elementAt.second);
                if (i < f8940a.size() - 1) {
                    sb.append(";");
                }
            }
            f8940a.clear();
        }
        return sb.toString();
    }
}
