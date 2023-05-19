package com.ifengyu.blelib.p153d;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.blelib.p152c.PacketUtil;
import com.ifengyu.library.utils.C4971k;
import no.nordicsemi.android.ble.data.Data;
import no.nordicsemi.android.ble.data.DataMerger;
import no.nordicsemi.android.ble.data.DataStream;

/* renamed from: com.ifengyu.blelib.d.a */
/* loaded from: classes2.dex */
public class CustomDataMerge implements DataMerger {

    /* renamed from: b */
    private static final String f12068b = "a";

    /* renamed from: a */
    private int f12069a;

    /* renamed from: b */
    private boolean m14332b(byte[] bArr) {
        if (bArr.length >= 8 && bArr[0] == -2) {
            return bArr[1] == 1 || bArr[1] == 2;
        }
        return false;
    }

    @Override // no.nordicsemi.android.ble.data.DataMerger
    /* renamed from: a */
    public boolean mo474a(@NonNull DataStream dataStream, @Nullable byte[] bArr, int i) {
        if (bArr == null) {
            return false;
        }
        if (m14332b(bArr)) {
            this.f12069a = PacketUtil.m14336f(bArr);
            String str = f12068b;
            C4971k.m8659a(str, "merge-->pack incoming, total length: " + this.f12069a);
        }
        if (C4971k.m8653g()) {
            String str2 = f12068b;
            C4971k.m8659a(str2, "merge-->pack incoming, index: " + i + ", data: " + new Data(bArr).toString());
        }
        dataStream.m471c(bArr);
        return dataStream.m473a() == this.f12069a;
    }
}
