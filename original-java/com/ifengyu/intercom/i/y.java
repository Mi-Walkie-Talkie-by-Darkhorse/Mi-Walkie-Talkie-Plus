package com.ifengyu.intercom.i;

import android.util.SparseArray;
import com.ifengyu.blelib.f.c;
import com.ifengyu.intercom.f.a;
import java.util.HashSet;

/* compiled from: IntercomUtil.java */
/* loaded from: classes2.dex */
public class y {
    public static int a(c cVar) {
        SparseArray<byte[]> b2 = cVar.b();
        if (b2 == null || b2.size() <= 0) {
            return 0;
        }
        return b2.keyAt(0);
    }

    public static boolean b(c cVar) {
        if (cVar == null || cVar.c() == null) {
            return false;
        }
        HashSet hashSet = new HashSet(cVar.c());
        HashSet hashSet2 = new HashSet(a.f5231a);
        hashSet2.retainAll(hashSet);
        return !hashSet2.isEmpty();
    }
}
