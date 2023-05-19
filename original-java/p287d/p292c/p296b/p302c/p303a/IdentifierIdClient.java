package p287d.p292c.p296b.p302c.p303a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;

/* renamed from: d.c.b.c.a.b */
/* loaded from: classes3.dex */
public class IdentifierIdClient {

    /* renamed from: a */
    private static Context f23714a = null;

    /* renamed from: b */
    private static boolean f23715b = false;

    /* renamed from: c */
    private static IdentifierIdObserver f23716c;

    /* renamed from: d */
    private static IdentifierIdObserver f23717d;

    /* renamed from: e */
    private static IdentifierIdObserver f23718e;

    /* renamed from: f */
    private static Object f23719f = new Object();

    /* renamed from: g */
    private static HandlerThread f23720g;

    /* renamed from: h */
    private static Handler f23721h;

    /* renamed from: i */
    private static String f23722i;

    /* renamed from: j */
    private static String f23723j;

    /* renamed from: k */
    private static volatile IdentifierIdClient f23724k;

    /* renamed from: l */
    private static volatile DataBaseOperation f23725l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IdentifierIdClient.java */
    /* renamed from: d.c.b.c.a.b$a */
    /* loaded from: classes3.dex */
    public static class HandlerC6538a extends Handler {
        HandlerC6538a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 11) {
                String unused = IdentifierIdClient.f23722i = IdentifierIdClient.f23725l.m827a(message.getData().getInt("type"), message.getData().getString("appid"));
                synchronized (IdentifierIdClient.f23719f) {
                    IdentifierIdClient.f23719f.notify();
                }
                return;
            }
            Log.e("VMS_IDLG_SDK_Client", "message type valid");
        }
    }

    private IdentifierIdClient() {
    }

    /* renamed from: a */
    public static String m826a(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
            } catch (Exception e) {
                e.printStackTrace();
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    /* renamed from: b */
    public static IdentifierIdClient m825b(Context context) {
        if (f23724k == null) {
            synchronized (IdentifierIdClient.class) {
                f23714a = context.getApplicationContext();
                f23724k = new IdentifierIdClient();
            }
        }
        if (f23725l == null) {
            synchronized (IdentifierIdClient.class) {
                f23714a = context.getApplicationContext();
                m815l();
                f23725l = new DataBaseOperation(f23714a);
                m818i();
            }
        }
        return f23724k;
    }

    /* renamed from: d */
    private static void m823d(Context context, int i, String str) {
        if (i == 0) {
            f23716c = new IdentifierIdObserver(f23724k, 0, null);
            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, f23716c);
        } else if (i == 1) {
            f23717d = new IdentifierIdObserver(f23724k, 1, str);
            ContentResolver contentResolver = context.getContentResolver();
            contentResolver.registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str), false, f23717d);
        } else if (i != 2) {
        } else {
            f23718e = new IdentifierIdObserver(f23724k, 2, str);
            ContentResolver contentResolver2 = context.getContentResolver();
            contentResolver2.registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str), false, f23718e);
        }
    }

    /* renamed from: g */
    private void m820g(int i, String str) {
        Message obtainMessage = f23721h.obtainMessage();
        obtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i);
        if (i == 1 || i == 2) {
            bundle.putString("appid", str);
        }
        obtainMessage.setData(bundle);
        f23721h.sendMessage(obtainMessage);
    }

    /* renamed from: i */
    public static void m818i() {
        f23715b = "1".equals(m826a("persist.sys.identifierid.supported", "0"));
    }

    /* renamed from: l */
    private static void m815l() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        f23720g = handlerThread;
        handlerThread.start();
        f23721h = new HandlerC6538a(f23720g.getLooper());
    }

    /* renamed from: c */
    public void m824c(int i, String str) {
        synchronized (f23719f) {
            m820g(i, str);
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                f23719f.wait(2000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (SystemClock.uptimeMillis() - uptimeMillis >= 2000) {
                Log.d("VMS_IDLG_SDK_Client", "query timeout");
            } else if (i == 0) {
                f23723j = f23722i;
                f23722i = null;
            } else if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                    }
                } else if (f23722i != null) {
                    f23722i = null;
                } else {
                    Log.e("VMS_IDLG_SDK_Client", "get aaid failed");
                }
                f23722i = null;
            } else if (f23722i != null) {
                f23722i = null;
            } else {
                Log.e("VMS_IDLG_SDK_Client", "get vaid failed");
            }
        }
    }

    /* renamed from: e */
    public boolean m822e() {
        return f23715b;
    }

    /* renamed from: f */
    public String m821f() {
        if (m822e()) {
            String str = f23723j;
            if (str != null) {
                return str;
            }
            m824c(0, null);
            if (f23716c == null) {
                m823d(f23714a, 0, null);
            }
            return f23723j;
        }
        return null;
    }
}
