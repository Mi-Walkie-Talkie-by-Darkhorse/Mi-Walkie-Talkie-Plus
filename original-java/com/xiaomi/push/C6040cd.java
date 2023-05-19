package com.xiaomi.push;

import android.content.Context;
import android.database.Cursor;
import com.xiaomi.push.C6045ci;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.cd */
/* loaded from: classes2.dex */
public class C6040cd extends C6045ci.AbstractC6047b<Long> {

    /* renamed from: a */
    private long f21149a;

    /* renamed from: a */
    private String f21150a;

    public C6040cd(String str, List<String> list, String str2, String[] strArr, String str3, String str4, String str5, int i, String str6) {
        super(str, list, str2, strArr, str3, str4, str5, i);
        this.f21149a = 0L;
        this.f21150a = str6;
    }

    /* renamed from: a */
    public static C6040cd m3525a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("count(*)");
        return new C6040cd(str, arrayList, null, null, null, null, null, 0, "job to get count of all message");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.xiaomi.push.C6045ci.AbstractC6047b
    /* renamed from: a */
    public Long mo3503a(Context context, Cursor cursor) {
        return Long.valueOf(cursor.getLong(0));
    }

    @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
    /* renamed from: a */
    public Object mo3511a() {
        return Long.valueOf(this.f21149a);
    }

    @Override // com.xiaomi.push.C6045ci.AbstractC6047b
    /* renamed from: a */
    public void mo3502a(Context context, List<Long> list) {
        if (context == null || list == null || list.size() <= 0) {
            return;
        }
        this.f21149a = list.get(0).longValue();
    }
}
