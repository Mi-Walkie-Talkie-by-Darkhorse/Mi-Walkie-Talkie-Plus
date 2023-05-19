package com.ifengyu.blelib.p154e;

import android.os.ParcelUuid;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

/* renamed from: com.ifengyu.blelib.e.b */
/* loaded from: classes2.dex */
final class BluetoothUuid {

    /* renamed from: a */
    private static final ParcelUuid f12070a = ParcelUuid.fromString("00000000-0000-1000-8000-00805F9B34FB");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ParcelUuid m14329a(byte[] bArr) {
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
                ParcelUuid parcelUuid = f12070a;
                return new ParcelUuid(new UUID(parcelUuid.getUuid().getMostSignificantBits() + (j << 32), parcelUuid.getUuid().getLeastSignificantBits()));
            }
        }
        throw new IllegalArgumentException("uuidBytes cannot be null");
    }
}
