package com.ifengyu.intercom.p214p;

import android.util.SparseArray;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p154e.ScanRecord;
import com.ifengyu.intercom.p187j.DeviceConstants;
import java.util.HashSet;

/* renamed from: com.ifengyu.intercom.p.w */
/* loaded from: classes2.dex */
public class IntercomUtil {
    /* renamed from: a */
    public static int m11057a(ScanRecord scanRecord) {
        SparseArray<byte[]> m14326c = scanRecord.m14326c();
        if (m14326c == null || m14326c.size() <= 0) {
            return 1;
        }
        int keyAt = m14326c.keyAt(0);
        if (keyAt == 4) {
            return 4;
        }
        if (keyAt == 5) {
            return 5;
        }
        if (keyAt == 36611) {
            return ByteUtils.m14368a(m14326c.valueAt(0));
        }
        if (keyAt == 911) {
            return ByteUtils.m14368a(m14326c.valueAt(0));
        }
        return 1;
    }

    /* renamed from: b */
    public static boolean m11056b(ScanRecord scanRecord) {
        if (scanRecord == null || scanRecord.m14325d() == null) {
            return false;
        }
        HashSet hashSet = new HashSet(scanRecord.m14325d());
        HashSet hashSet2 = new HashSet(DeviceConstants.f13917e);
        hashSet2.retainAll(hashSet);
        return !hashSet2.isEmpty();
    }
}
