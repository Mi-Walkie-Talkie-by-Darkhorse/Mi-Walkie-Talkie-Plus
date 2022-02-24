package com.ifengyu.intercom.f;

import android.os.ParcelUuid;
import com.ifengyu.intercom.lite.e.f;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* compiled from: DeviceConsts.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static List<ParcelUuid> f5231a;

    static {
        ArrayList arrayList = new ArrayList();
        f5231a = arrayList;
        arrayList.add(new ParcelUuid(UUID.fromString("0000aee7-0000-1000-8000-00805f9b34fb")));
        f5231a.add(new ParcelUuid(UUID.fromString("0000fdab-0000-1000-8000-00805f9b34fb")));
        f5231a.add(new ParcelUuid(UUID.fromString("0000fee7-0000-1000-8000-00805f9b34fb")));
        f5231a.add(new ParcelUuid(f.A));
    }

    public static String a(int i) {
        if (i == 1) {
            return "dolphin";
        }
        if (i == 36611) {
            return "lite";
        }
        if (i == 4) {
            return "shark";
        }
        if (i != 5) {
            return null;
        }
        return "seal";
    }

    public static boolean b(int i) {
        return i == 1 || i == 4 || i == 5;
    }
}
