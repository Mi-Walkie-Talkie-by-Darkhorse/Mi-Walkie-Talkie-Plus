package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ci;

/* loaded from: classes2.dex */
public class cc extends ce {
    public cc(String str, String str2, String[] strArr, String str3) {
        super(str, str2, strArr, str3);
    }

    public static cc a(Context context, String str, int i) {
        b.b("delete  messages when db size is too bigger");
        String a2 = ci.a(context).m135a(str);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("rowDataId in (select ");
        sb.append("rowDataId from " + a2);
        sb.append(" order by createTimeStamp asc");
        sb.append(" limit ?)");
        return new cc(str, sb.toString(), new String[]{String.valueOf(i)}, "a job build to delete history message");
    }

    private void a(long j) {
        String[] strArr = ((ci.d) this).f165a;
        if (strArr != null && strArr.length > 0) {
            strArr[0] = String.valueOf(j);
        }
    }

    @Override // com.xiaomi.push.ci.a
    public void a(Context context, Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            long a2 = co.a(m137a());
            long j = ca.f148a;
            if (a2 > j) {
                long j2 = (long) ((((a2 - j) * 1.2d) / j) * longValue);
                a(j2);
                bw a3 = bw.a(context);
                a3.a("begin delete " + j2 + "noUpload messages , because db size is " + a2 + "B");
                super.a(context, obj);
                return;
            }
            b.b("db size is suitable");
        }
    }
}
