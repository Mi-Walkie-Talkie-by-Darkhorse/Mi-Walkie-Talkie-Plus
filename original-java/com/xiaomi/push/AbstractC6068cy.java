package com.xiaomi.push;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.crypto.tls.CipherSuite;

/* renamed from: com.xiaomi.push.cy */
/* loaded from: classes2.dex */
public abstract class AbstractC6068cy {

    /* renamed from: com.xiaomi.push.cy$a */
    /* loaded from: classes2.dex */
    public static class C6069a extends AbstractC6067cx {
        public C6069a() {
            super(1);
        }

        @Override // com.xiaomi.push.AbstractC6067cx
        /* renamed from: a */
        public String mo3419a(Context context, String str, List<InterfaceC6012bh> list) {
            URL url;
            if (list == null) {
                url = new URL(str);
            } else {
                Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                for (InterfaceC6012bh interfaceC6012bh : list) {
                    buildUpon.appendQueryParameter(interfaceC6012bh.mo3679a(), interfaceC6012bh.mo3678b());
                }
                url = new URL(buildUpon.toString());
            }
            return C6013bi.m3671a(context, url);
        }
    }

    /* renamed from: a */
    static int m3426a(int i, int i2) {
        return (((i2 + 243) / 1448) * CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA) + 1080 + i + i2;
    }

    /* renamed from: a */
    static int m3425a(int i, int i2, int i3) {
        return (((i2 + 200) / 1448) * CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA) + GLMapStaticValue.AM_PARAMETERNAME_RASTER_ENABLE + i2 + i + i3;
    }

    /* renamed from: a */
    private static int m3422a(AbstractC6067cx abstractC6067cx, String str, List<InterfaceC6012bh> list, String str2) {
        if (abstractC6067cx.m3428a() == 1) {
            return m3426a(str.length(), m3421a(str2));
        }
        if (abstractC6067cx.m3428a() == 2) {
            return m3425a(str.length(), m3420a(list), m3421a(str2));
        }
        return -1;
    }

    /* renamed from: a */
    static int m3421a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    /* renamed from: a */
    static int m3420a(List<InterfaceC6012bh> list) {
        int i = 0;
        for (InterfaceC6012bh interfaceC6012bh : list) {
            if (!TextUtils.isEmpty(interfaceC6012bh.mo3679a())) {
                i += interfaceC6012bh.mo3679a().length();
            }
            if (!TextUtils.isEmpty(interfaceC6012bh.mo3678b())) {
                i += interfaceC6012bh.mo3678b().length();
            }
        }
        return i * 2;
    }

    /* renamed from: a */
    public static String m3424a(Context context, String str, List<InterfaceC6012bh> list) {
        return m3423a(context, str, list, new C6069a(), true);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00aa A[Catch: MalformedURLException -> 0x00c3, TRY_ENTER, TryCatch #4 {MalformedURLException -> 0x00c3, blocks: (B:4:0x000f, B:6:0x0016, B:8:0x0020, B:11:0x0027, B:13:0x002d, B:14:0x0030, B:15:0x0035, B:17:0x003b, B:19:0x0044, B:21:0x004c, B:49:0x00aa, B:50:0x00bc), top: B:64:0x000f }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m3423a(Context context, String str, List<InterfaceC6012bh> list, AbstractC6067cx abstractC6067cx, boolean z) {
        C6058cq c6058cq;
        IOException iOException;
        String str2;
        String str3;
        if (C6013bi.m3662b(context)) {
            try {
                ArrayList<String> arrayList = new ArrayList<>();
                if (z) {
                    C6058cq m3452a = C6062cu.m3459a().m3452a(str);
                    if (m3452a != null) {
                        arrayList = m3452a.m3482a(str);
                    }
                    c6058cq = m3452a;
                } else {
                    c6058cq = null;
                }
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
                Iterator<String> it2 = arrayList.iterator();
                String str4 = null;
                while (it2.hasNext()) {
                    String next = it2.next();
                    ArrayList arrayList2 = list != null ? new ArrayList(list) : null;
                    long currentTimeMillis = System.currentTimeMillis();
                    try {
                    } catch (IOException e) {
                        iOException = e;
                        str2 = str4;
                    }
                    if (!abstractC6067cx.m3427a(context, next, (List<InterfaceC6012bh>) arrayList2)) {
                        return str4;
                    }
                    String mo3419a = abstractC6067cx.mo3419a(context, next, (List<InterfaceC6012bh>) arrayList2);
                    try {
                    } catch (IOException e2) {
                        e = e2;
                        str3 = mo3419a;
                    }
                    if (!TextUtils.isEmpty(mo3419a)) {
                        if (c6058cq != null) {
                            try {
                                c6058cq.m3479a(next, System.currentTimeMillis() - currentTimeMillis, m3422a(abstractC6067cx, next, arrayList2, mo3419a));
                            } catch (IOException e3) {
                                iOException = e3;
                                str2 = mo3419a;
                                if (c6058cq != null) {
                                    c6058cq.m3478a(next, System.currentTimeMillis() - currentTimeMillis, m3422a(abstractC6067cx, next, arrayList2, str2), iOException);
                                }
                                iOException.printStackTrace();
                                str4 = str2;
                            }
                        }
                        return mo3419a;
                    }
                    if (c6058cq != null) {
                        str3 = mo3419a;
                        try {
                            c6058cq.m3478a(next, System.currentTimeMillis() - currentTimeMillis, m3422a(abstractC6067cx, next, arrayList2, mo3419a), null);
                        } catch (IOException e4) {
                            e = e4;
                            String str5 = str3;
                            iOException = e;
                            str2 = str5;
                            if (c6058cq != null) {
                            }
                            iOException.printStackTrace();
                            str4 = str2;
                        }
                    } else {
                        str3 = mo3419a;
                    }
                    str4 = str3;
                }
                return str4;
            } catch (MalformedURLException e5) {
                e5.printStackTrace();
            }
        }
        return null;
    }
}
