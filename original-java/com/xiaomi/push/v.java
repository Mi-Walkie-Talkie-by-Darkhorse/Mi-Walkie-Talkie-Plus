package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Collection;

/* loaded from: classes2.dex */
public class v {

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f9370a;

        /* renamed from: a  reason: collision with other field name */
        private final StringBuilder f1018a;

        /* renamed from: b  reason: collision with root package name */
        private final String f9371b;

        public a() {
            this(Constants.COLON_SEPARATOR, Constants.ACCEPT_TIME_SEPARATOR_SP);
        }

        public a(String str, String str2) {
            this.f1018a = new StringBuilder();
            this.f9370a = str;
            this.f9371b = str2;
        }

        public a a(String str, Object obj) {
            if (!TextUtils.isEmpty(str)) {
                if (this.f1018a.length() > 0) {
                    this.f1018a.append(this.f9371b);
                }
                StringBuilder sb = this.f1018a;
                sb.append(str);
                sb.append(this.f9370a);
                sb.append(obj);
            }
            return this;
        }

        public String toString() {
            return this.f1018a.toString();
        }
    }

    public static int a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i;
        }
    }

    public static boolean a(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static int b(String str, int i) {
        return !TextUtils.isEmpty(str) ? ((str.hashCode() / 10) * 10) + i : i;
    }
}
