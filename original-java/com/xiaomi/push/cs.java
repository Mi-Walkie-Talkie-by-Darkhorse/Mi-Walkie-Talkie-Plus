package com.xiaomi.push;

import com.xiaomi.mipush.sdk.Constants;
import java.net.InetSocketAddress;

/* loaded from: classes2.dex */
public final class cs {

    /* renamed from: a  reason: collision with root package name */
    private int f8822a;

    /* renamed from: a  reason: collision with other field name */
    private String f175a;

    public cs(String str, int i) {
        this.f175a = str;
        this.f8822a = i;
    }

    public static cs a(String str, int i) {
        int lastIndexOf = str.lastIndexOf(Constants.COLON_SEPARATOR);
        if (lastIndexOf != -1) {
            str = str.substring(0, lastIndexOf);
            try {
                int parseInt = Integer.parseInt(str.substring(lastIndexOf + 1));
                if (parseInt > 0) {
                    i = parseInt;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return new cs(str, i);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static InetSocketAddress m147a(String str, int i) {
        cs a2 = a(str, i);
        return new InetSocketAddress(a2.m148a(), a2.a());
    }

    public int a() {
        return this.f8822a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m148a() {
        return this.f175a;
    }

    public String toString() {
        if (this.f8822a <= 0) {
            return this.f175a;
        }
        return this.f175a + Constants.COLON_SEPARATOR + this.f8822a;
    }
}
