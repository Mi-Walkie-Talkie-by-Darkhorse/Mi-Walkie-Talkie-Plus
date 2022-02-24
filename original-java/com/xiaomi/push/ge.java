package com.xiaomi.push;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class ge extends fy {
    public ge() {
        a("PING", (String) null);
        a("0");
        a(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.fy
    /* renamed from: a */
    public ByteBuffer mo292a(ByteBuffer byteBuffer) {
        return m295a().length == 0 ? byteBuffer : super.mo292a(byteBuffer);
    }

    @Override // com.xiaomi.push.fy
    public int c() {
        if (m295a().length == 0) {
            return 0;
        }
        return super.c();
    }
}
