package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.controller.d.a;
import com.xiaomi.mistatistic.sdk.data.i;
import com.xiaomi.mistatistic.sdk.data.j;
import com.xiaomi.mistatistic.sdk.data.k;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SessionManager */
public class m {
    private static m a;
    private static long c = 30000;
    private static final List<i> d = new ArrayList();
    private Handler b = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 31415927:
                    long a2 = k.a(c.a(), "session_begin", 0);
                    long a3 = k.a(c.a(), "last_deactivate", 0);
                    String a4 = k.a(c.a(), "pv_path", "");
                    if (a2 > 0 && a3 > a2) {
                        m.this.a(c.a(), a2, a3);
                    }
                    if (!TextUtils.isEmpty(a4)) {
                        m.this.b(c.a(), a4);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    public static m a() {
        if (a == null) {
            a = new m();
        }
        return a;
    }

    private m() {
    }

    public void a(final Context context, final String str, final String str2) {
        if (context == null) {
            h.a("record pageStart without context.", (Throwable) null);
            return;
        }
        this.b.removeMessages(31415927);
        d.a().a((a) new a() {
            public void a() {
                m.this.b(context, str, str2);
            }
        });
    }

    /* access modifiers changed from: private */
    public void b(Context context, String str, String str2) {
        String str3;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            long a2 = k.a(context.getApplicationContext(), "session_begin", 0);
            long a3 = k.a(context.getApplicationContext(), "last_deactivate", 0);
            String a4 = k.a(context.getApplicationContext(), "pv_path", "");
            if (a2 <= 0) {
                k.b(context.getApplicationContext(), "session_begin", currentTimeMillis);
            } else if (a3 <= 0) {
                k.b(context.getApplicationContext(), "session_begin", currentTimeMillis);
                if (!TextUtils.isEmpty(a4)) {
                    b(context, a4);
                    a4 = "";
                }
            }
            if (a3 <= 0 || currentTimeMillis - a3 <= c) {
                str3 = a4;
            } else {
                a(context, a2, a3);
                if (!TextUtils.isEmpty(a4)) {
                    b(context, a4);
                    str3 = "";
                } else {
                    str3 = a4;
                }
                k.b(context.getApplicationContext(), "session_begin", currentTimeMillis);
            }
            String c2 = c(context, str);
            if (!str3.endsWith(c2) || !TextUtils.isEmpty(str2)) {
                k.b(context.getApplicationContext(), "pv_path", a(str3, c2));
                k.b(c.a(), "source_path", a(k.a(c.a(), "source_path", ""), str2));
            }
            d.add(new i(c2, Long.valueOf(currentTimeMillis)));
        } catch (Exception e) {
            h.a("processActActivated exception: ", (Throwable) e);
        }
    }

    public void a(final Context context, final String str) {
        d.a().a((a) new a() {
            public void a() {
                m.this.a(str, context);
            }
        });
        this.b.sendEmptyMessageDelayed(31415927, c);
    }

    /* access modifiers changed from: private */
    public void a(String str, Context context) {
        int size;
        try {
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            k.b(c.a(), "last_deactivate", valueOf.longValue());
            if (!d.isEmpty()) {
                if (!TextUtils.isEmpty(str)) {
                    String c2 = c(context, str);
                    size = d.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            if (TextUtils.equals(((i) d.get(size)).b(), c2)) {
                                break;
                            }
                            size--;
                        } else {
                            size = -1;
                            break;
                        }
                    }
                } else {
                    size = d.size() - 1;
                }
                if (size >= 0) {
                    i iVar = (i) d.get(size);
                    String b2 = iVar.b();
                    long a2 = iVar.a();
                    long longValue = valueOf.longValue() - a2;
                    if (!TextUtils.isEmpty(b2) && a2 > 0 && longValue > 0) {
                        iVar.a(Long.valueOf(longValue));
                        LocalEventRecorder.insertEvent(iVar);
                        d.remove(size);
                    }
                }
            }
        } catch (Exception e) {
            h.a("processActDeativated exception: ", (Throwable) e);
        }
    }

    /* access modifiers changed from: private */
    public void a(Context context, long j, long j2) {
        String b2 = j.b(context.getApplicationContext());
        if (TextUtils.isEmpty(b2)) {
            b2 = "NULL";
        }
        LocalEventRecorder.insertEvent(new k(j, j2, b2));
        k.b(context.getApplicationContext(), "session_begin", 0);
        k.b(c.a(), "last_deactivate", 0);
    }

    /* access modifiers changed from: private */
    public void b(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            LocalEventRecorder.insertEvent(new j(str, k.a(context, "source_path", "")));
            k.b(context, "source_path", "");
            k.b(context, "pv_path", "");
        }
    }

    private String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return Constants.ACCEPT_TIME_SEPARATOR_SP + str2;
    }

    private String c(Context context, String str) {
        if (context == null) {
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            str = context.getClass().getName();
        }
        String packageName = context.getPackageName();
        if (str.startsWith(packageName)) {
            return str.replace(packageName, "");
        }
        return str;
    }
}
