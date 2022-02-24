package com.xiaomi.push;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ci;

/* loaded from: classes2.dex */
class ck implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8813a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ ci.a f166a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(ci.a aVar, Context context) {
        this.f166a = aVar;
        this.f8813a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        Exception e;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = this.f166a.a();
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.beginTransaction();
                    this.f166a.a(this.f8813a, sQLiteDatabase);
                    sQLiteDatabase.setTransactionSuccessful();
                }
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Exception e2) {
                        e = e2;
                        b.a(e);
                        this.f166a.a(this.f8813a);
                    }
                }
                if (this.f166a.f157a != null) {
                    this.f166a.f157a.close();
                }
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Exception e3) {
                        b.a(e3);
                        this.f166a.a(this.f8813a);
                        throw th;
                    }
                }
                if (this.f166a.f157a != null) {
                    this.f166a.f157a.close();
                }
                this.f166a.a(this.f8813a);
                throw th;
            }
        } catch (Exception e4) {
            b.a(e4);
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Exception e5) {
                    e = e5;
                    b.a(e);
                    this.f166a.a(this.f8813a);
                }
            }
            if (this.f166a.f157a != null) {
                this.f166a.f157a.close();
            }
        }
        this.f166a.a(this.f8813a);
    }
}
