package com.ifengyu.blelib.f;

import android.os.ParcelUuid;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

/* compiled from: BluetoothUuid.java */
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ParcelUuid f5206a = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ParcelUuid a(byte[] bArr) {
        long j;
        if (bArr != null) {
            int length = bArr.length;
            if (length != 2 && length != 4 && length != 16) {
                throw new IllegalArgumentException("uuidBytes length invalid - " + length);
            } else if (length == 16) {
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                return new ParcelUuid(new UUID(order.getLong(8), order.getLong(0)));
            } else {
                if (length == 2) {
                    j = (bArr[0] & UnsignedBytes.MAX_VALUE) + ((bArr[1] & UnsignedBytes.MAX_VALUE) << 8);
                } else {
                    j = ((bArr[3] & UnsignedBytes.MAX_VALUE) << 24) + (bArr[0] & UnsignedBytes.MAX_VALUE) + ((bArr[1] & UnsignedBytes.MAX_VALUE) << 8) + ((bArr[2] & UnsignedBytes.MAX_VALUE) << 16);
                }
                return new ParcelUuid(new UUID(f5206a.getUuid().getMostSignificantBits() + (j << 32), f5206a.getUuid().getLeastSignificantBits()));
            }
        } else {
            throw new IllegalArgumentException("uuidBytes cannot be null");
        }
    }
}
