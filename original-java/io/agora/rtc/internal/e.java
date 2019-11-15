package io.agora.rtc.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* compiled from: Marshallable */
class e {
    private ByteBuffer a = ByteBuffer.allocate(8192);

    public e() {
        this.a.order(ByteOrder.LITTLE_ENDIAN);
        this.a.position(2);
    }

    public byte[] a() {
        short position = (short) this.a.position();
        this.a.putShort(0, position);
        byte[] bArr = new byte[position];
        this.a.position(0);
        this.a.get(bArr);
        return bArr;
    }

    public void a(byte[] bArr) {
        this.a.putShort((short) bArr.length);
        this.a.put(bArr);
    }

    public void a(short s) {
        this.a.putShort(s);
    }

    public void a(int i) {
        this.a.putInt(i);
    }

    public void a(ArrayList<String> arrayList) {
        if (arrayList == null) {
            a(0);
            return;
        }
        int size = arrayList.size();
        a((short) size);
        for (int i = 0; i < size; i++) {
            a(((String) arrayList.get(i)).getBytes());
        }
    }
}
