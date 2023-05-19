package com.xiaomi.push;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6045ci;

/* renamed from: com.xiaomi.push.ck */
/* loaded from: classes2.dex */
class RunnableC6052ck implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f21179a;

    /* renamed from: a */
    final /* synthetic */ C6045ci.AbstractRunnableC6046a f21180a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6052ck(C6045ci.AbstractRunnableC6046a abstractRunnableC6046a, Context context) {
        this.f21180a = abstractRunnableC6046a;
        this.f21179a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = this.f21180a.mo3504a();
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.beginTransaction();
                    this.f21180a.mo3500a(this.f21179a, sQLiteDatabase);
                    sQLiteDatabase.setTransactionSuccessful();
                }
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Exception e) {
                        e = e;
                        AbstractC5876b.m4143a(e);
                        this.f21180a.mo3501a(this.f21179a);
                    }
                }
                AbstractC6043cg abstractC6043cg = this.f21180a.f21160a;
                if (abstractC6043cg != null) {
                    abstractC6043cg.close();
                }
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Exception e2) {
                        AbstractC5876b.m4143a(e2);
                        this.f21180a.mo3501a(this.f21179a);
                        throw th;
                    }
                }
                AbstractC6043cg abstractC6043cg2 = this.f21180a.f21160a;
                if (abstractC6043cg2 != null) {
                    abstractC6043cg2.close();
                }
                this.f21180a.mo3501a(this.f21179a);
                throw th;
            }
        } catch (Exception e3) {
            AbstractC5876b.m4143a(e3);
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Exception e4) {
                    e = e4;
                    AbstractC5876b.m4143a(e);
                    this.f21180a.mo3501a(this.f21179a);
                }
            }
            AbstractC6043cg abstractC6043cg3 = this.f21180a.f21160a;
            if (abstractC6043cg3 != null) {
                abstractC6043cg3.close();
            }
        }
        this.f21180a.mo3501a(this.f21179a);
    }
}
