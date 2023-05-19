package com.ifengyu.intercom.device.lite.p156c.p159c;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import no.nordicsemi.android.ble.data.DataSplitter;

/* renamed from: com.ifengyu.intercom.device.lite.c.c.b */
/* loaded from: classes2.dex */
public class UpgradeSplitter implements DataSplitter {

    /* renamed from: a */
    private OtaPacketParser f12178a;

    public UpgradeSplitter(OtaPacketParser otaPacketParser) {
        this.f12178a = otaPacketParser;
    }

    @Override // no.nordicsemi.android.ble.data.DataSplitter
    @Nullable
    /* renamed from: a */
    public byte[] mo469a(@NonNull byte[] bArr, int i, int i2) {
        if (this.f12178a.m14156j()) {
            this.f12178a.m14155k();
            return this.f12178a.m14160f();
        }
        return null;
    }
}
