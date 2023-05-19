package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6045ci;

/* renamed from: com.xiaomi.push.cc */
/* loaded from: classes2.dex */
public class C6039cc extends C6041ce {
    public C6039cc(String str, String str2, String[] strArr, String str3) {
        super(str, str2, strArr, str3);
    }

    /* renamed from: a */
    public static C6039cc m3526a(Context context, String str, int i) {
        AbstractC5876b.m4141b("delete  messages when db size is too bigger");
        String m3514a = C6045ci.m3519a(context).m3514a(str);
        if (TextUtils.isEmpty(m3514a)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("rowDataId in (select ");
        sb.append("rowDataId from " + m3514a);
        sb.append(" order by createTimeStamp asc");
        sb.append(" limit ?)");
        return new C6039cc(str, sb.toString(), new String[]{String.valueOf(i)}, "a job build to delete history message");
    }

    /* renamed from: a */
    private void m3527a(long j) {
        String[] strArr = ((C6045ci.C6049d) this).f21176a;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        strArr[0] = String.valueOf(j);
    }

    @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
    /* renamed from: a */
    public void mo3508a(Context context, Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            long m3494a = C6056co.m3494a(m3510a());
            long j = C6037ca.f21145a;
            if (m3494a <= j) {
                AbstractC5876b.m4141b("db size is suitable");
                return;
            }
            long j2 = (long) ((((m3494a - j) * 1.2d) / j) * longValue);
            m3527a(j2);
            C6031bw m3588a = C6031bw.m3588a(context);
            m3588a.m3581a("begin delete " + j2 + "noUpload messages , because db size is " + m3494a + "B");
            super.mo3508a(context, obj);
        }
    }
}
