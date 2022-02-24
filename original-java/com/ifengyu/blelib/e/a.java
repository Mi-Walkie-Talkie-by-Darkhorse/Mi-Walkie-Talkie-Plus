package com.ifengyu.blelib.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.blelib.d.f;
import no.nordicsemi.android.ble.data.Data;
import no.nordicsemi.android.ble.data.b;
import no.nordicsemi.android.ble.data.d;

/* compiled from: CustomDataMerge.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f5204b = "a";

    /* renamed from: a  reason: collision with root package name */
    private int f5205a;

    @Override // no.nordicsemi.android.ble.data.b
    public boolean a(@NonNull d dVar, @Nullable byte[] bArr, int i) {
        if (bArr == null) {
            return false;
        }
        if (a(bArr)) {
            this.f5205a = f.e(bArr);
            String str = f5204b;
            com.ifengyu.blelib.a.a(str, "merge-->pack incoming, total length: " + this.f5205a);
        }
        if (com.ifengyu.blelib.a.a()) {
            String str2 = f5204b;
            com.ifengyu.blelib.a.a(str2, "merge-->pack incoming, index: " + i + ", data: " + new Data(bArr).toString());
        }
        dVar.a(bArr);
        return dVar.a() == this.f5205a;
    }

    private boolean a(byte[] bArr) {
        if (bArr.length >= 8 && bArr[0] == -2) {
            return bArr[1] == 1 || bArr[1] == 2;
        }
        return false;
    }
}
