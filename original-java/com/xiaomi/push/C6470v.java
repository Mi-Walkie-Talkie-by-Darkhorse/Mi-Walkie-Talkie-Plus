package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Collection;

/* renamed from: com.xiaomi.push.v */
/* loaded from: classes2.dex */
public class C6470v {

    /* renamed from: com.xiaomi.push.v$a */
    /* loaded from: classes2.dex */
    public static class C6471a {

        /* renamed from: a */
        private final String f23253a;

        /* renamed from: a */
        private final StringBuilder f23254a;

        /* renamed from: b */
        private final String f23255b;

        public C6471a() {
            this(Constants.COLON_SEPARATOR, Constants.ACCEPT_TIME_SEPARATOR_SP);
        }

        public C6471a(String str, String str2) {
            this.f23254a = new StringBuilder();
            this.f23253a = str;
            this.f23255b = str2;
        }

        /* renamed from: a */
        public C6471a m1226a(String str, Object obj) {
            if (!TextUtils.isEmpty(str)) {
                if (this.f23254a.length() > 0) {
                    this.f23254a.append(this.f23255b);
                }
                StringBuilder sb = this.f23254a;
                sb.append(str);
                sb.append(this.f23253a);
                sb.append(obj);
            }
            return this;
        }

        public String toString() {
            return this.f23254a.toString();
        }
    }

    /* renamed from: a */
    public static int m1229a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i;
        }
    }

    /* renamed from: a */
    public static boolean m1228a(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: b */
    public static int m1227b(String str, int i) {
        return !TextUtils.isEmpty(str) ? ((str.hashCode() / 10) * 10) + i : i;
    }
}
