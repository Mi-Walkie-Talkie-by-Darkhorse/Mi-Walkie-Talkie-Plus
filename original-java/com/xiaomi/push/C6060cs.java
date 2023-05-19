package com.xiaomi.push;

import com.xiaomi.mipush.sdk.Constants;
import java.net.InetSocketAddress;

/* renamed from: com.xiaomi.push.cs */
/* loaded from: classes2.dex */
public final class C6060cs {

    /* renamed from: a */
    private int f21204a;

    /* renamed from: a */
    private String f21205a;

    public C6060cs(String str, int i) {
        this.f21205a = str;
        this.f21204a = i;
    }

    /* renamed from: a */
    public static C6060cs m3461a(String str, int i) {
        int lastIndexOf = str.lastIndexOf(Constants.COLON_SEPARATOR);
        if (lastIndexOf != -1) {
            String substring = str.substring(0, lastIndexOf);
            try {
                int parseInt = Integer.parseInt(str.substring(lastIndexOf + 1));
                if (parseInt > 0) {
                    i = parseInt;
                }
            } catch (NumberFormatException unused) {
            }
            str = substring;
        }
        return new C6060cs(str, i);
    }

    /* renamed from: a */
    public static InetSocketAddress m3460a(String str, int i) {
        C6060cs m3461a = m3461a(str, i);
        return new InetSocketAddress(m3461a.m3462a(), m3461a.m3463a());
    }

    /* renamed from: a */
    public int m3463a() {
        return this.f21204a;
    }

    /* renamed from: a */
    public String m3462a() {
        return this.f21205a;
    }

    public String toString() {
        if (this.f21204a > 0) {
            return this.f21205a + Constants.COLON_SEPARATOR + this.f21204a;
        }
        return this.f21205a;
    }
}
