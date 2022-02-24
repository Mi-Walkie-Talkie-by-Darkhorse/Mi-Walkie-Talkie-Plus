package com.ifengyu.intercom.lite.e.j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import no.nordicsemi.android.ble.data.c;

/* compiled from: UpgradeSplitter.java */
/* loaded from: classes2.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private a f5406a;

    public b(a aVar) {
        this.f5406a = aVar;
    }

    @Override // no.nordicsemi.android.ble.data.c
    @Nullable
    public byte[] a(@NonNull byte[] bArr, int i, int i2) {
        if (!this.f5406a.f()) {
            return null;
        }
        this.f5406a.g();
        return this.f5406a.c();
    }
}
