package com.xiaomi.push;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;

/* renamed from: com.xiaomi.push.be */
/* loaded from: classes2.dex */
class C6009be implements InterfaceC5993at {

    /* renamed from: a */
    private static String f21089a = "content://com.vivo.vms.IdProvider/IdentifierId/";

    /* renamed from: b */
    private static String f21090b = f21089a + "OAID";

    /* renamed from: c */
    private static String f21091c = f21089a + "VAID_";

    /* renamed from: d */
    private static String f21092d = f21089a + "AAID_";

    /* renamed from: e */
    private static String f21093e = f21089a + "OAIDSTATUS";

    /* renamed from: f */
    private static String f21094f = "persist.sys.identifierid.supported";

    /* renamed from: a */
    private Context f21095a;

    public C6009be(Context context) {
        this.f21095a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        if (r10 != null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
        if (r10 == null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
        return r0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m3681a(String str) {
        Throwable th;
        Cursor cursor;
        String str2 = null;
        try {
            cursor = this.f21095a.getContentResolver().query(Uri.parse(str), null, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToNext()) {
                        str2 = cursor.getString(cursor.getColumnIndex("value"));
                    }
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public static boolean m3682a(Context context) {
        try {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(Uri.parse(f21089a).getAuthority(), 128);
            if (resolveContentProvider != null) {
                if ((resolveContentProvider.applicationInfo.flags & 1) != 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public String mo3684a() {
        return m3681a(f21090b);
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public boolean mo3683a() {
        return "1".equals(C6468t.m1242a(f21094f, "0"));
    }
}
