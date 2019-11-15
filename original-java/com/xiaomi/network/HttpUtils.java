package com.xiaomi.network;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.channel.commonutils.network.c;
import com.xiaomi.channel.commonutils.network.d;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class HttpUtils {

    public static class DefaultHttpGetProcessor extends HttpProcessor {
        public DefaultHttpGetProcessor() {
            super(1);
        }

        public String b(Context context, String str, List<c> list) {
            if (list == null) {
                return d.a(context, new URL(str));
            }
            Builder buildUpon = Uri.parse(str).buildUpon();
            for (c cVar : list) {
                buildUpon.appendQueryParameter(cVar.a(), cVar.b());
            }
            return d.a(context, new URL(buildUpon.toString()));
        }
    }

    static int a(int i, int i2) {
        return (((i2 + 243) / 1448) * 132) + 1080 + i + i2;
    }

    static int a(int i, int i2, int i3) {
        return (((i2 + 200) / 1448) * 132) + 1011 + i2 + i + i3;
    }

    private static int a(HttpProcessor httpProcessor, String str, List<c> list, String str2) {
        if (httpProcessor.a() == 1) {
            return a(str.length(), a(str2));
        }
        if (httpProcessor.a() != 2) {
            return -1;
        }
        return a(str.length(), a(list), a(str2));
    }

    static int a(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return str.getBytes("UTF-8").length;
        } catch (UnsupportedEncodingException e) {
            return i;
        }
    }

    static int a(List<c> list) {
        int i = 0;
        Iterator it = list.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2 * 2;
            }
            c cVar = (c) it.next();
            if (!TextUtils.isEmpty(cVar.a())) {
                i2 += cVar.a().length();
            }
            i = !TextUtils.isEmpty(cVar.b()) ? cVar.b().length() + i2 : i2;
        }
    }

    public static String a(Context context, String str, List<c> list) {
        return a(context, str, list, new DefaultHttpGetProcessor(), true);
    }

    public static String a(Context context, String str, List<c> list, HttpProcessor httpProcessor, boolean z) {
        if (d.d(context)) {
            try {
                ArrayList arrayList = new ArrayList();
                Fallback fallback = null;
                if (z) {
                    fallback = HostManager.getInstance().getFallbacksByURL(str);
                    if (fallback != null) {
                        arrayList = fallback.a(str);
                    }
                }
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
                String str2 = null;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    List list2 = list != null ? new ArrayList(list) : null;
                    long currentTimeMillis = System.currentTimeMillis();
                    try {
                        if (!httpProcessor.a(context, str3, list2)) {
                            return str2;
                        }
                        str2 = httpProcessor.b(context, str3, list2);
                        if (TextUtils.isEmpty(str2)) {
                            if (fallback != null) {
                                fallback.a(str3, System.currentTimeMillis() - currentTimeMillis, (long) a(httpProcessor, str3, list2, str2), null);
                            }
                            str2 = str2;
                        } else if (fallback == null) {
                            return str2;
                        } else {
                            fallback.a(str3, System.currentTimeMillis() - currentTimeMillis, (long) a(httpProcessor, str3, list2, str2));
                            return str2;
                        }
                    } catch (IOException e) {
                        if (fallback != null) {
                            fallback.a(str3, System.currentTimeMillis() - currentTimeMillis, (long) a(httpProcessor, str3, list2, str2), e);
                        }
                        ThrowableExtension.printStackTrace(e);
                    }
                }
                return str2;
            } catch (MalformedURLException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        return null;
    }
}
