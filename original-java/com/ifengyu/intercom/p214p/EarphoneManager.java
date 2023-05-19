package com.ifengyu.intercom.p214p;

import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import com.ifengyu.intercom.MiTalkiApp;

/* renamed from: com.ifengyu.intercom.p.s */
/* loaded from: classes2.dex */
public class EarphoneManager {

    /* renamed from: b */
    private static final EarphoneManager f14481b = new EarphoneManager();

    /* renamed from: a */
    private final AudioManager f14482a = (AudioManager) MiTalkiApp.m14296h().getApplicationContext().getSystemService("audio");

    /* renamed from: b */
    public static EarphoneManager m11077b() {
        return f14481b;
    }

    /* renamed from: a */
    public boolean m11078a() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f14482a.isWiredHeadsetOn() || this.f14482a.isBluetoothScoOn() || this.f14482a.isBluetoothA2dpOn();
        }
        for (AudioDeviceInfo audioDeviceInfo : this.f14482a.getDevices(2)) {
            int type = audioDeviceInfo.getType();
            if (type == 3 || type == 4 || type == 8 || type == 7) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public void m11076c() {
        C4161y.m11054a("EarphoneManager", "a2dp: " + this.f14482a.isBluetoothA2dpOn() + ", isWiredHeadsetOn: " + this.f14482a.isWiredHeadsetOn() + ", isScoOn: " + this.f14482a.isBluetoothScoOn());
        if (this.f14482a.isBluetoothScoOn()) {
            return;
        }
        this.f14482a.setBluetoothScoOn(true);
        this.f14482a.startBluetoothSco();
    }

    /* renamed from: d */
    public void m11075d() {
        if (this.f14482a.isBluetoothScoOn()) {
            this.f14482a.setBluetoothScoOn(false);
            this.f14482a.stopBluetoothSco();
            this.f14482a.setBluetoothA2dpOn(true);
        } else if (this.f14482a.isBluetoothA2dpOn()) {
        } else {
            this.f14482a.setBluetoothA2dpOn(true);
        }
    }
}
