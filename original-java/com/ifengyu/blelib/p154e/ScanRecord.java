package com.ifengyu.blelib.p154e;

import android.os.ParcelUuid;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.primitives.UnsignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.ifengyu.blelib.e.c */
/* loaded from: classes2.dex */
public final class ScanRecord {

    /* renamed from: a */
    private final int f12071a;
    @Nullable

    /* renamed from: b */
    private final List<ParcelUuid> f12072b;
    @Nullable

    /* renamed from: c */
    private final SparseArray<byte[]> f12073c;
    @Nullable

    /* renamed from: d */
    private final Map<ParcelUuid, byte[]> f12074d;

    /* renamed from: e */
    private final int f12075e;

    /* renamed from: f */
    private final String f12076f;

    /* renamed from: g */
    private final byte[] f12077g;

    private ScanRecord(@Nullable List<ParcelUuid> list, @Nullable SparseArray<byte[]> sparseArray, @Nullable Map<ParcelUuid, byte[]> map, int i, int i2, String str, byte[] bArr) {
        this.f12072b = list;
        this.f12073c = sparseArray;
        this.f12074d = map;
        this.f12076f = str;
        this.f12071a = i;
        this.f12075e = i2;
        this.f12077g = bArr;
    }

    /* renamed from: a */
    private static byte[] m14328a(@NonNull byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    @Nullable
    /* renamed from: e */
    public static ScanRecord m14324e(@Nullable byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        int i = 0;
        ArrayList arrayList = null;
        SparseArray sparseArray = null;
        HashMap hashMap = null;
        String str2 = null;
        int i2 = -1;
        byte b = -2147483648;
        while (i < bArr.length) {
            try {
                int i3 = i + 1;
                int i4 = bArr[i] & UnsignedBytes.MAX_VALUE;
                if (i4 != 0) {
                    int i5 = i4 - 1;
                    int i6 = i3 + 1;
                    int i7 = bArr[i3] & UnsignedBytes.MAX_VALUE;
                    int i8 = 16;
                    if (i7 != 22) {
                        if (i7 == 255) {
                            int i9 = ((bArr[i6 + 1] & UnsignedBytes.MAX_VALUE) << 8) + (255 & bArr[i6]);
                            byte[] m14328a = m14328a(bArr, i6 + 2, i5 - 2);
                            if (sparseArray == null) {
                                sparseArray = new SparseArray();
                            }
                            sparseArray.put(i9, m14328a);
                        } else if (i7 != 32 && i7 != 33) {
                            switch (i7) {
                                case 1:
                                    i2 = bArr[i6] & UnsignedBytes.MAX_VALUE;
                                    break;
                                case 2:
                                case 3:
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    m14323f(bArr, i6, i5, 2, arrayList);
                                    break;
                                case 4:
                                case 5:
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    m14323f(bArr, i6, i5, 4, arrayList);
                                    break;
                                case 6:
                                case 7:
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    m14323f(bArr, i6, i5, 16, arrayList);
                                    break;
                                case 8:
                                case 9:
                                    str2 = new String(m14328a(bArr, i6, i5), str);
                                    break;
                                case 10:
                                    b = bArr[i6];
                            }
                        }
                        i = i5 + i6;
                    }
                    if (i7 == 32) {
                        i8 = 4;
                    } else if (i7 != 33) {
                        i8 = 2;
                    }
                    ParcelUuid m14329a = BluetoothUuid.m14329a(m14328a(bArr, i6, i8));
                    byte[] m14328a2 = m14328a(bArr, i6 + i8, i5 - i8);
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    hashMap.put(m14329a, m14328a2);
                    i = i5 + i6;
                } else {
                    return new ScanRecord(arrayList, sparseArray, hashMap, i2, b, str2, bArr);
                }
            } catch (Exception unused) {
                Log.e("ScanRecord", "unable to parse scan record: " + Arrays.toString(bArr));
                return new ScanRecord(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
            }
        }
        return new ScanRecord(arrayList, sparseArray, hashMap, i2, b, str2, bArr);
    }

    /* renamed from: f */
    private static int m14323f(@NonNull byte[] bArr, int i, int i2, int i3, @NonNull List<ParcelUuid> list) {
        while (i2 > 0) {
            list.add(BluetoothUuid.m14329a(m14328a(bArr, i, i3)));
            i2 -= i3;
            i += i3;
        }
        return i;
    }

    @Nullable
    /* renamed from: b */
    public String m14327b() {
        return this.f12076f;
    }

    @Nullable
    /* renamed from: c */
    public SparseArray<byte[]> m14326c() {
        return this.f12073c;
    }

    @Nullable
    /* renamed from: d */
    public List<ParcelUuid> m14325d() {
        return this.f12072b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ScanRecord.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f12077g, ((ScanRecord) obj).f12077g);
    }

    public String toString() {
        return "ScanRecord [advertiseFlags=" + this.f12071a + ", serviceUuids=" + this.f12072b + ", manufacturerSpecificData=" + BluetoothLeUtils.m14331a(this.f12073c) + ", serviceData=" + BluetoothLeUtils.m14330b(this.f12074d) + ", txPowerLevel=" + this.f12075e + ", deviceName=" + this.f12076f + "]";
    }
}
