package com.ifengyu.intercom.p187j;

import android.os.ParcelUuid;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* renamed from: com.ifengyu.intercom.j.b */
/* loaded from: classes2.dex */
public class DeviceConstants {

    /* renamed from: a */
    public static final UUID f13913a;

    /* renamed from: b */
    public static final UUID f13914b;

    /* renamed from: c */
    public static final UUID f13915c;

    /* renamed from: d */
    public static final UUID f13916d;

    /* renamed from: e */
    public static List<ParcelUuid> f13917e;

    static {
        UUID fromString = UUID.fromString("0000AEE7-0000-1000-8000-00805f9b34fb");
        f13913a = fromString;
        UUID fromString2 = UUID.fromString("0000FDAB-0000-1000-8000-00805f9b34fb");
        f13914b = fromString2;
        f13915c = UUID.fromString("0000AEC7-0000-1000-8000-00805f9b34fb");
        f13916d = UUID.fromString("0000AEC8-0000-1000-8000-00805f9b34fb");
        ArrayList arrayList = new ArrayList();
        f13917e = arrayList;
        arrayList.add(new ParcelUuid(fromString));
        f13917e.add(new ParcelUuid(fromString2));
    }

    /* renamed from: a */
    public static String m11982a(int i) {
        if (i != 1) {
            if (i != 9) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 13) {
                            if (i != 14) {
                                return null;
                            }
                            return "mi3";
                        }
                        return "mipoc";
                    }
                    return "seal";
                }
                return "shark";
            }
            return "lite";
        }
        return "dolphin";
    }

    /* renamed from: b */
    public static int m11981b(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 108055:
                if (str.equals("mi3")) {
                    c = 0;
                    break;
                }
                break;
            case 3322030:
                if (str.equals("lite")) {
                    c = 1;
                    break;
                }
                break;
            case 3526141:
                if (str.equals("seal")) {
                    c = 2;
                    break;
                }
                break;
            case 103903016:
                if (str.equals("mipoc")) {
                    c = 3;
                    break;
                }
                break;
            case 109400037:
                if (str.equals("shark")) {
                    c = 4;
                    break;
                }
                break;
            case 1837070814:
                if (str.equals("dolphin")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 14;
            case 1:
                return 9;
            case 2:
                return 5;
            case 3:
                return 13;
            case 4:
                return 4;
            case 5:
            default:
                return 1;
        }
    }

    /* renamed from: c */
    public static boolean m11980c(int i) {
        return i == 1 || i == 4 || i == 5 || i == 9 || i == 14;
    }

    /* renamed from: d */
    public static boolean m11979d(int i) {
        return i == 13;
    }
}
