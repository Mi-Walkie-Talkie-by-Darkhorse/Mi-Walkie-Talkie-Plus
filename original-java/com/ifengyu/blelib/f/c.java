package com.ifengyu.blelib.f;

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

/* compiled from: ScanRecord.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f5207a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final List<ParcelUuid> f5208b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<byte[]> f5209c;
    @Nullable
    private final Map<ParcelUuid, byte[]> d;
    private final int e;
    private final String f;
    private final byte[] g;

    private c(@Nullable List<ParcelUuid> list, @Nullable SparseArray<byte[]> sparseArray, @Nullable Map<ParcelUuid, byte[]> map, int i, int i2, String str, byte[] bArr) {
        this.f5208b = list;
        this.f5209c = sparseArray;
        this.d = map;
        this.f = str;
        this.f5207a = i;
        this.e = i2;
        this.g = bArr;
    }

    @Nullable
    public String a() {
        return this.f;
    }

    @Nullable
    public SparseArray<byte[]> b() {
        return this.f5209c;
    }

    @Nullable
    public List<ParcelUuid> c() {
        return this.f5208b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.g, ((c) obj).g);
    }

    public String toString() {
        return "ScanRecord [advertiseFlags=" + this.f5207a + ", serviceUuids=" + this.f5208b + ", manufacturerSpecificData=" + a.a(this.f5209c) + ", serviceData=" + a.a(this.d) + ", txPowerLevel=" + this.e + ", deviceName=" + this.f + "]";
    }

    @Nullable
    public static c a(@Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int i = 0;
        ArrayList arrayList = null;
        SparseArray sparseArray = null;
        HashMap hashMap = null;
        String str = null;
        int i2 = -1;
        byte b2 = -2147483648;
        while (i < bArr.length) {
            try {
                int i3 = i + 1;
                int i4 = bArr[i] & UnsignedBytes.MAX_VALUE;
                if (i4 == 0) {
                    return new c(arrayList, sparseArray, hashMap, i2, b2, str, bArr);
                }
                int i5 = i4 - 1;
                int i6 = i3 + 1;
                int i7 = bArr[i3] & UnsignedBytes.MAX_VALUE;
                int i8 = 16;
                if (i7 != 22) {
                    if (i7 == 255) {
                        int i9 = ((bArr[i6 + 1] & UnsignedBytes.MAX_VALUE) << 8) + (255 & bArr[i6]);
                        byte[] a2 = a(bArr, i6 + 2, i5 - 2);
                        if (sparseArray == null) {
                            sparseArray = new SparseArray();
                        }
                        sparseArray.put(i9, a2);
                    } else if (!(i7 == 32 || i7 == 33)) {
                        switch (i7) {
                            case 1:
                                i2 = bArr[i6] & UnsignedBytes.MAX_VALUE;
                                continue;
                            case 2:
                            case 3:
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                a(bArr, i6, i5, 2, arrayList);
                                continue;
                            case 4:
                            case 5:
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                a(bArr, i6, i5, 4, arrayList);
                                continue;
                            case 6:
                            case 7:
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                a(bArr, i6, i5, 16, arrayList);
                                continue;
                            case 8:
                            case 9:
                                str = new String(a(bArr, i6, i5));
                                continue;
                            case 10:
                                b2 = bArr[i6];
                                continue;
                            default:
                                continue;
                        }
                    }
                    i = i5 + i6;
                }
                if (i7 == 32) {
                    i8 = 4;
                } else if (i7 != 33) {
                    i8 = 2;
                }
                ParcelUuid a3 = b.a(a(bArr, i6, i8));
                byte[] a4 = a(bArr, i6 + i8, i5 - i8);
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put(a3, a4);
                i = i5 + i6;
            } catch (Exception unused) {
                Log.e("ScanRecord", "unable to parse scan record: " + Arrays.toString(bArr));
                return new c(null, null, null, -1, Integer.MIN_VALUE, null, bArr);
            }
        }
        return new c(arrayList, sparseArray, hashMap, i2, b2, str, bArr);
    }

    private static int a(@NonNull byte[] bArr, int i, int i2, int i3, @NonNull List<ParcelUuid> list) {
        while (i2 > 0) {
            list.add(b.a(a(bArr, i, i3)));
            i2 -= i3;
            i += i3;
        }
        return i;
    }

    private static byte[] a(@NonNull byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }
}
