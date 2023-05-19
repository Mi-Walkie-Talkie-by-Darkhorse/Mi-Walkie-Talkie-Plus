package com.xiaomi.push;

import java.nio.ByteBuffer;

/* renamed from: com.xiaomi.push.ge */
/* loaded from: classes2.dex */
public final class C6185ge extends C6173fy {
    public C6185ge() {
        m2833a("PING", (String) null);
        m2835a("0");
        m2838a(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.C6173fy
    /* renamed from: a */
    public ByteBuffer mo2778a(ByteBuffer byteBuffer) {
        return m2839a().length == 0 ? byteBuffer : super.mo2778a(byteBuffer);
    }

    @Override // com.xiaomi.push.C6173fy
    /* renamed from: c */
    public int mo2777c() {
        if (m2839a().length == 0) {
            return 0;
        }
        return super.mo2777c();
    }
}
