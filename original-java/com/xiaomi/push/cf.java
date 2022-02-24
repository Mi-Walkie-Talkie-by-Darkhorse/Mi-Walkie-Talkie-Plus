package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import com.xiaomi.push.ci;

/* loaded from: classes2.dex */
public class cf extends ci.e {

    /* renamed from: a  reason: collision with root package name */
    private String f8802a;

    public cf(String str, ContentValues contentValues, String str2) {
        super(str, contentValues);
        this.f8802a = "MessageInsertJob";
        this.f8802a = str2;
    }

    public static cf a(Context context, String str, hz hzVar) {
        byte[] a2 = jf.a(hzVar);
        if (a2 == null || a2.length <= 0) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 0);
        contentValues.put("messageId", "");
        contentValues.put("messageItemId", hzVar.d());
        contentValues.put("messageItem", a2);
        contentValues.put("appId", bw.a(context).b());
        contentValues.put("packageName", bw.a(context).m113a());
        contentValues.put("createTimeStamp", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("uploadTimestamp", (Integer) 0);
        return new cf(str, contentValues, "a job build to insert message to db");
    }
}
