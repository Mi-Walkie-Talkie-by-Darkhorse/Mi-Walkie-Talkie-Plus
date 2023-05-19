package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import com.huawei.hms.mlsdk.common.MLApplicationSetting;
import com.xiaomi.push.C6045ci;

/* renamed from: com.xiaomi.push.cf */
/* loaded from: classes2.dex */
public class C6042cf extends C6045ci.C6050e {

    /* renamed from: a */
    private String f21152a;

    public C6042cf(String str, ContentValues contentValues, String str2) {
        super(str, contentValues);
        this.f21152a = "MessageInsertJob";
        this.f21152a = str2;
    }

    /* renamed from: a */
    public static C6042cf m3523a(Context context, String str, C6241hz c6241hz) {
        byte[] m1933a = C6278jf.m1933a(c6241hz);
        if (m1933a == null || m1933a.length <= 0) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 0);
        contentValues.put("messageId", "");
        contentValues.put("messageItemId", c6241hz.m2530d());
        contentValues.put("messageItem", m1933a);
        contentValues.put("appId", C6031bw.m3588a(context).m3579b());
        contentValues.put(MLApplicationSetting.BundleKeyConstants.AppInfo.packageName, C6031bw.m3588a(context).m3590a());
        contentValues.put("createTimeStamp", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("uploadTimestamp", (Integer) 0);
        return new C6042cf(str, contentValues, "a job build to insert message to db");
    }
}
