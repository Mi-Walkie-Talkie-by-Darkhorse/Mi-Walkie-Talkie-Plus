package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.h.a;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;

/* compiled from: BleUpdateTransport.java */
/* loaded from: classes2.dex */
class d extends b<byte[]> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new c(), "BleUpdateTransport");
    }

    private void j() {
        o.a(this.f.a() != null && this.f.b() > 0, "you should call prepareForUpdate() first.");
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [T, byte[]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.ifengyu.intercom.update.dolphin.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a() {
        /*
            r9 = this;
            r9.j()
            com.ifengyu.intercom.update.dolphin.e<T> r0 = r9.f
            int r0 = r0.d()
            com.ifengyu.intercom.update.dolphin.e<T> r1 = r9.f
            int r1 = r1.b()
            com.ifengyu.intercom.i.h r2 = com.ifengyu.intercom.i.h.a()
            com.ifengyu.intercom.update.dolphin.e<T> r3 = r9.f
            byte[] r3 = r3.a()
            com.ifengyu.intercom.update.dolphin.e<T> r4 = r9.f
            int r4 = r4.b()
            r5 = 0
            long r2 = r2.a(r3, r5, r4)
            boolean r4 = com.ifengyu.intercom.i.z.a()
            if (r4 == 0) goto L_0x0050
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "sendUpdateRequest: chunk count="
            r4.append(r6)
            r4.append(r0)
            java.lang.String r6 = ", file length="
            r4.append(r6)
            r4.append(r1)
            java.lang.String r6 = ", crc32Result="
            r4.append(r6)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            java.lang.String r6 = "BleUpdateTransport"
            com.ifengyu.intercom.i.z.a(r6, r4)
        L_0x0050:
            r4 = 16
            byte[] r4 = new byte[r4]
            r9.h = r4
            byte[] r4 = (byte[]) r4
            com.ifengyu.intercom.protos.MitalkProtos$UPDATESTATECODE r6 = com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE.REQUEST
            int r6 = r6.ordinal()
            long r6 = (long) r6
            r8 = 1
            com.ifengyu.intercom.node.transport.e.a(r4, r6, r5, r8)
            T r4 = r9.h
            byte[] r4 = (byte[]) r4
            com.ifengyu.intercom.protos.MitalkProtos$FILETYPE r5 = r9.e
            int r5 = r5.getNumber()
            long r5 = (long) r5
            com.ifengyu.intercom.node.transport.e.a(r4, r5, r8, r8)
            T r4 = r9.h
            byte[] r4 = (byte[]) r4
            long r5 = (long) r0
            r0 = 2
            com.ifengyu.intercom.node.transport.e.a(r4, r5, r0, r0)
            T r0 = r9.h
            byte[] r0 = (byte[]) r0
            long r4 = (long) r1
            r1 = 4
            com.ifengyu.intercom.node.transport.e.a(r0, r4, r1, r1)
            T r0 = r9.h
            byte[] r0 = (byte[]) r0
            r4 = 8
            com.ifengyu.intercom.node.transport.e.a(r0, r2, r4, r1)
            T r0 = r9.h
            byte[] r0 = (byte[]) r0
            int r2 = r9.j
            long r2 = (long) r2
            r4 = 12
            com.ifengyu.intercom.node.transport.e.a(r0, r2, r4, r1)
            T r0 = r9.h
            byte[] r0 = (byte[]) r0
            boolean r0 = r9.a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.update.dolphin.d.a():boolean");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, byte[]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.ifengyu.intercom.update.dolphin.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b() {
        /*
            r5 = this;
            r0 = 1
            byte[] r1 = new byte[r0]
            r5.h = r1
            byte[] r1 = (byte[]) r1
            com.ifengyu.intercom.protos.MitalkProtos$UPDATESTATECODE r2 = com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE.RESTART
            int r2 = r2.ordinal()
            long r2 = (long) r2
            r4 = 0
            com.ifengyu.intercom.node.transport.e.a(r1, r2, r4, r0)
            T r0 = r5.h
            byte[] r0 = (byte[]) r0
            boolean r0 = r5.a(r0, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.update.dolphin.d.b():boolean");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, byte[]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.ifengyu.intercom.update.dolphin.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean c() {
        /*
            r5 = this;
            r0 = 1
            byte[] r1 = new byte[r0]
            r5.h = r1
            byte[] r1 = (byte[]) r1
            com.ifengyu.intercom.protos.MitalkProtos$UPDATESTATECODE r2 = com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE.FINISH
            int r2 = r2.ordinal()
            long r2 = (long) r2
            r4 = 0
            com.ifengyu.intercom.node.transport.e.a(r1, r2, r4, r0)
            T r0 = r5.h
            byte[] r0 = (byte[]) r0
            r1 = 60000(0xea60, float:8.4078E-41)
            boolean r0 = r5.a(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.update.dolphin.d.c():boolean");
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.ifengyu.intercom.update.dolphin.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean e() {
        /*
            r3 = this;
            boolean r0 = r3.d()
            r1 = 1
            if (r0 == 0) goto L_0x0021
            android.util.SparseArray<T> r0 = r3.g
            int r2 = r3.i
            java.lang.Object r0 = r0.get(r2)
            r3.h = r0
            if (r0 == 0) goto L_0x0044
            byte[] r0 = (byte[]) r0
            boolean r0 = r3.a(r0)
            if (r0 == 0) goto L_0x0044
            int r0 = r3.i
            int r0 = r0 + r1
            r3.i = r0
            goto L_0x0045
        L_0x0021:
            com.ifengyu.intercom.update.dolphin.e<T> r0 = r3.f
            int r0 = r0.c()
            r3.i = r0
            com.ifengyu.intercom.update.dolphin.e<T> r0 = r3.f
            java.lang.Object r0 = r0.e()
            r3.h = r0
            if (r0 == 0) goto L_0x0044
            byte[] r0 = (byte[]) r0
            boolean r0 = r3.a(r0)
            if (r0 == 0) goto L_0x0044
            r3.i()
            int r0 = r3.i
            int r0 = r0 + r1
            r3.i = r0
            goto L_0x0045
        L_0x0044:
            r1 = 0
        L_0x0045:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.update.dolphin.d.e():boolean");
    }

    private boolean a(byte[] bArr) {
        return a(bArr, 10000);
    }

    private boolean a(byte[] bArr, int i) {
        z.a("BleUpdateTransport", "sendBinaryData...");
        if (i != 0) {
            d(i);
        }
        a a2 = a.a();
        if (a2 == null) {
            return false;
        }
        if (a2.a(bArr)) {
            return true;
        }
        z.b("BleUpdateTransport", "sendDolphinData error");
        return false;
    }
}
