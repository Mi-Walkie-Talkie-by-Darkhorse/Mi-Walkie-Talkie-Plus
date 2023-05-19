package com.ifengyu.intercom.p181h.p182b.p183a.p184d;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.p181h.p182b.p183a.Mi3OtaPacketParser;
import no.nordicsemi.android.ble.data.DataSplitter;

/* renamed from: com.ifengyu.intercom.h.b.a.d.a */
/* loaded from: classes2.dex */
public class Mi3UpgradeSplitter implements DataSplitter {

    /* renamed from: a */
    private Mi3OtaPacketParser f13720a;

    public Mi3UpgradeSplitter(Mi3OtaPacketParser mi3OtaPacketParser) {
        this.f13720a = mi3OtaPacketParser;
    }

    @Override // no.nordicsemi.android.ble.data.DataSplitter
    @Nullable
    /* renamed from: a */
    public byte[] mo469a(@NonNull byte[] bArr, int i, int i2) {
        if (this.f13720a.m12417h()) {
            this.f13720a.m12416i();
            return this.f13720a.m12421d();
        }
        return null;
    }
}
