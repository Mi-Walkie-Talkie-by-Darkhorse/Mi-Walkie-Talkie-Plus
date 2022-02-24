package com.xiaomi.push;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;

/* loaded from: classes2.dex */
class be implements at {

    /* renamed from: a  reason: collision with root package name */
    private static String f8770a = "content://com.vivo.vms.IdProvider/IdentifierId/";

    /* renamed from: b  reason: collision with root package name */
    private static String f8771b = f8770a + "OAID";

    /* renamed from: c  reason: collision with root package name */
    private static String f8772c = f8770a + "VAID_";
    private static String d = f8770a + "AAID_";
    private static String e = f8770a + "OAIDSTATUS";
    private static String f = "persist.sys.identifierid.supported";

    /* renamed from: a  reason: collision with other field name */
    private Context f127a;

    public be(Context context) {
        this.f127a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r10 != null) goto L_0x002c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
        if (r10 == null) goto L_0x003e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String a(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 0
            android.content.Context r1 = r9.f127a     // Catch: all -> 0x0030, Exception -> 0x003a
            android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: all -> 0x0030, Exception -> 0x003a
            android.net.Uri r3 = android.net.Uri.parse(r10)     // Catch: all -> 0x0030, Exception -> 0x003a
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r10 = r2.query(r3, r4, r5, r6, r7)     // Catch: all -> 0x0030, Exception -> 0x003a
            if (r10 == 0) goto L_0x002a
            boolean r1 = r10.moveToNext()     // Catch: all -> 0x0026, Exception -> 0x0028
            if (r1 == 0) goto L_0x002a
            java.lang.String r1 = "value"
            int r1 = r10.getColumnIndex(r1)     // Catch: all -> 0x0026, Exception -> 0x0028
            java.lang.String r0 = r10.getString(r1)     // Catch: all -> 0x0026, Exception -> 0x0028
            goto L_0x002a
        L_0x0026:
            r0 = move-exception
            goto L_0x0034
        L_0x0028:
            goto L_0x003b
        L_0x002a:
            if (r10 == 0) goto L_0x003e
        L_0x002c:
            r10.close()
            goto L_0x003e
        L_0x0030:
            r10 = move-exception
            r8 = r0
            r0 = r10
            r10 = r8
        L_0x0034:
            if (r10 == 0) goto L_0x0039
            r10.close()
        L_0x0039:
            throw r0
        L_0x003a:
            r10 = r0
        L_0x003b:
            if (r10 == 0) goto L_0x003e
            goto L_0x002c
        L_0x003e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.be.a(java.lang.String):java.lang.String");
    }

    public static boolean a(Context context) {
        try {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(Uri.parse(f8770a).getAuthority(), 128);
            if (resolveContentProvider != null) {
                if ((resolveContentProvider.applicationInfo.flags & 1) != 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public String mo92a() {
        return a(f8771b);
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo92a() {
        return "1".equals(t.a(f, "0"));
    }
}
