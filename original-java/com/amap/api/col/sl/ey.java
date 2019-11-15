package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: BeaconManager */
public final class ey {
    BluetoothAdapter a = null;
    boolean b = false;
    a c = null;
    Object d = new Object();
    /* access modifiers changed from: private */
    public ArrayList<ex> e = new ArrayList<>();
    private ArrayList<ex> f = new ArrayList<>();
    private boolean g = false;
    private Map<String, String> h = new HashMap();

    @SuppressLint({"NewApi"})
    /* compiled from: BeaconManager */
    class a implements LeScanCallback {
        a() {
        }

        public final void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            int i2;
            try {
                ex a2 = ey.this.a(bluetoothDevice, i, bArr);
                synchronized (ey.this.d) {
                    int i3 = 0;
                    while (i3 < ey.this.e.size()) {
                        ex exVar = (ex) ey.this.e.get(i3);
                        if (exVar.h.equals(a2.h)) {
                            ey.this.e.remove(exVar);
                            ey.this.e.add(a2);
                            return;
                        }
                        if (fy.b() - exVar.i > 3000) {
                            ey.this.e.remove(exVar);
                            i2 = i3 - 1;
                        } else {
                            i2 = i3;
                        }
                        i3 = i2 + 1;
                    }
                    ey.this.e.add(a2);
                }
            } catch (Throwable th) {
                fq.a(th, "APS", "onLeScan");
            }
        }
    }

    public ey(Context context) {
        try {
            if (context.checkCallingOrSelfPermission("android.permission.BLUETOOTH_ADMIN") == 0 && context.checkCallingOrSelfPermission("android.permission.BLUETOOTH") == 0) {
                this.g = true;
            }
            if (fy.c() >= 18 && this.g) {
                this.a = BluetoothAdapter.getDefaultAdapter();
            }
        } catch (Throwable th) {
        }
    }

    /* access modifiers changed from: private */
    public ex a(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
        String upperCase;
        int i2;
        int i3;
        try {
            long b2 = fy.b();
            String a2 = a(bArr);
            if (a2.length() == 16) {
                upperCase = a2 + "0000000000000000";
                i3 = 0;
                i2 = 0;
            } else if (a2.length() == 12) {
                upperCase = a2 + "00000000000000000000";
                i3 = 0;
                i2 = 0;
            } else {
                byte[] bArr2 = new byte[16];
                System.arraycopy(bArr, 9, bArr2, 0, 16);
                String b3 = fy.b(bArr2);
                StringBuilder sb = new StringBuilder();
                sb.append(b3.substring(0, 32));
                upperCase = sb.toString().toUpperCase(Locale.getDefault());
                i2 = ((bArr[25] & 255) * StreamUtil.MNS_ENCODE_NONE) + (bArr[26] & 255);
                i3 = ((bArr[27] & 255) * StreamUtil.MNS_ENCODE_NONE) + (bArr[28] & 255);
                if (i3 == 11669 || i2 == 2080 || i2 == 1796 || bluetoothDevice == null) {
                    return null;
                }
            }
            byte b4 = bArr[29];
            String address = bluetoothDevice.getAddress();
            if (!BluetoothAdapter.checkBluetoothAddress(address.toUpperCase(Locale.CHINA))) {
                return null;
            }
            byte[] bArr3 = new byte[6];
            int i4 = 0;
            for (String parseInt : address.split(":")) {
                bArr3[i4] = (byte) Integer.parseInt(parseInt, 16);
                i4++;
            }
            return new ex(upperCase, bluetoothDevice.getName(), bArr3, address, i2, i3, b4, i, b2);
        } catch (Throwable th) {
            fq.a(th, "APS", "createFromScanData");
            return null;
        }
    }

    private String a(byte[] bArr) {
        if (bArr == null || bArr.length <= 24) {
            return "";
        }
        if (bArr[0] == 2 && bArr[1] == 1 && ((bArr[2] == 5 || bArr[2] == 6) && bArr[3] == 23)) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 9, bArr2, 0, 16);
            StringBuffer stringBuffer = new StringBuffer();
            for (byte valueOf : bArr2) {
                stringBuffer.append(String.format("%02X", new Object[]{Byte.valueOf(valueOf)}));
            }
            String stringBuffer2 = stringBuffer.toString();
            String str = (String) this.h.get(stringBuffer2);
            if (str != null) {
                return str;
            }
            byte[] a2 = ff.a(fy.c(bArr2), new BigInteger("8021267762677846189778330391499"), new BigInteger("49549924105414102803086139689747"));
            if (a2 == null || a2.length < 8) {
                return "";
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            for (int i = 6; i > 0; i--) {
                stringBuffer3.append(String.format("%02X", new Object[]{Byte.valueOf(a2[i])}));
            }
            String stringBuffer4 = stringBuffer3.toString();
            this.h.put(stringBuffer2, stringBuffer4);
            return stringBuffer4;
        }
        if (bArr[0] == 2 && bArr[1] == 1 && bArr[2] == 6 && bArr[3] == 22 && bArr[5] == -88 && bArr[6] == 1 && bArr[7] == 32) {
            try {
                byte[] b2 = ff.b(fy.d(bArr), new byte[]{-1, -15, 55, 33, 4, 21, Tnaf.POW_2_WIDTH, 20, -85, 9, 0, 2, -91, -43, -59, -75});
                if (b2 != null) {
                    StringBuffer stringBuffer5 = new StringBuffer();
                    for (int i2 = 0; i2 < 8; i2++) {
                        stringBuffer5.append(String.format("%02X", new Object[]{Byte.valueOf(b2[i2])}));
                    }
                    return stringBuffer5.toString();
                }
            } catch (Throwable th) {
            }
        }
        return "";
    }

    private synchronized void e() {
        ArrayList<ex> arrayList = this.f;
        ArrayList<ex> arrayList2 = this.e;
        arrayList.clear();
        synchronized (this.d) {
            if (arrayList2 != null) {
                if (arrayList2.size() > 0) {
                    if (arrayList2.size() > 20) {
                        Collections.sort(arrayList2);
                    }
                    for (int i = 0; i < arrayList2.size(); i++) {
                        arrayList.add(arrayList2.get(i));
                        if (i >= 25) {
                            break;
                        }
                    }
                }
            }
        }
    }

    @SuppressLint({"NewApi"})
    public final void a() {
        try {
            if (fy.c() >= 18 && this.a != null) {
                if (this.c == null) {
                    this.c = new a();
                }
                if (this.b) {
                    this.a.stopLeScan(this.c);
                }
                this.b = false;
                this.f.clear();
                this.e.clear();
            }
        } catch (Throwable th) {
        }
    }

    private boolean f() {
        try {
            if (this.a == null || !this.a.isEnabled() || !fp.B() || fy.c() < 18) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    public final void b() {
        if (!this.b && f()) {
            if (this.c == null) {
                this.c = new a();
            }
            this.a.startLeScan(this.c);
            this.b = true;
        }
    }

    public final ArrayList<ex> c() {
        if (f()) {
            e();
        } else {
            this.f.clear();
        }
        return this.f;
    }

    public final void d() {
        a();
        this.a = null;
    }
}
