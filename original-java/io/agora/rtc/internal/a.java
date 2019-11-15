package io.agora.rtc.internal;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupCmdID;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* compiled from: AudioRoutingController */
public class a {
    /* access modifiers changed from: private */
    public BluetoothHeadset A;
    private ServiceListener B;
    private WeakReference<Context> a;
    private h b;
    private WeakReference<C0079a> c;
    /* access modifiers changed from: private */
    public f d;
    /* access modifiers changed from: private */
    public boolean e = false;
    /* access modifiers changed from: private */
    public int f = -1;
    /* access modifiers changed from: private */
    public boolean g = false;
    /* access modifiers changed from: private */
    public boolean h = false;
    /* access modifiers changed from: private */
    public int i = -1;
    /* access modifiers changed from: private */
    public int j = -1;
    /* access modifiers changed from: private */
    public int k = -1;
    /* access modifiers changed from: private */
    public int l = 1;
    /* access modifiers changed from: private */
    public boolean m = true;
    /* access modifiers changed from: private */
    public boolean n = false;
    /* access modifiers changed from: private */
    public boolean o = false;
    /* access modifiers changed from: private */
    public int p = -1;
    /* access modifiers changed from: private */
    public boolean q = false;
    private boolean r = false;
    private boolean s = false;
    /* access modifiers changed from: private */
    public int t = 3;
    private boolean u = false;
    /* access modifiers changed from: private */
    public int v;
    private final Runnable w = new Runnable() {
        public void run() {
            a.this.k();
        }
    };
    private i x;
    private b y;
    /* access modifiers changed from: private */
    public BluetoothAdapter z;

    /* renamed from: io.agora.rtc.internal.a$a reason: collision with other inner class name */
    /* compiled from: AudioRoutingController */
    public interface C0079a {
        void c(int i);

        void d(int i);
    }

    /* compiled from: AudioRoutingController */
    private class b extends BroadcastReceiver {
        private b() {
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -99);
                d.a("AudioRoute", "BT ACTION_CONNECTION_STATE_CHANGED prev " + intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -99) + ", " + intExtra);
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                switch (intExtra) {
                    case 0:
                        d.b("AudioRoute", "Bluetooth device " + bluetoothDevice + " disconnected");
                        a.this.a(2, 0);
                        return;
                    case 1:
                        d.b("AudioRoute", "Bluetooth device " + bluetoothDevice + " connecting");
                        return;
                    case 2:
                        if (bluetoothDevice == null) {
                            return;
                        }
                        if (bluetoothDevice.getBluetoothClass().hasService(2097152) || bluetoothDevice.getBluetoothClass().hasService(4194304)) {
                            d.b("AudioRoute", "Bluetooth device " + bluetoothDevice + " connected");
                            a.this.v = 0;
                            a.this.a(2, 1);
                            return;
                        }
                        return;
                    case 3:
                        d.b("AudioRoute", "Bluetooth device " + bluetoothDevice + " disconnecting");
                        return;
                    default:
                        d.b("AudioRoute", "Bluetooth device " + bluetoothDevice + " unknown event, state=" + intExtra);
                        return;
                }
            } else if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -99);
                d.a("AudioRoute", "BT ACTION_AUDIO_STATE_CHANGED prev " + intent.getIntExtra("android.bluetooth.profile.extra.PREVIOUS_STATE", -99) + ", " + intExtra2);
                BluetoothDevice bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                switch (intExtra2) {
                    case 10:
                        d.b("AudioRoute", "Bluetooth audio device " + bluetoothDevice2 + " disconnected");
                        return;
                    case 11:
                        d.b("AudioRoute", "Bluetooth audio device " + bluetoothDevice2 + " connecting");
                        return;
                    case 12:
                        d.b("AudioRoute", "Bluetooth audio device " + bluetoothDevice2 + " connected");
                        return;
                    default:
                        d.b("AudioRoute", "Bluetooth audio device " + bluetoothDevice2 + " event, state=" + intExtra2);
                        return;
                }
            } else if (action.equals("android.media.ACTION_SCO_AUDIO_STATE_UPDATED")) {
                int intExtra3 = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -99);
                d.a("AudioRoute", "BT ACTION_SCO_AUDIO_STATE_UPDATED prev " + intent.getIntExtra("android.media.extra.SCO_AUDIO_PREVIOUS_STATE", -99) + ", " + intExtra3);
                switch (intExtra3) {
                    case -1:
                        d.b("AudioRoute", "Bluetooth SCO device error");
                        return;
                    case 0:
                        d.b("AudioRoute", "Bluetooth SCO device disconnected");
                        a.this.a(3, 0);
                        return;
                    case 1:
                        for (BluetoothDevice bluetoothDevice3 : a.this.z.getBondedDevices()) {
                            if (!bluetoothDevice3.getBluetoothClass().hasService(2097152)) {
                                if (bluetoothDevice3.getBluetoothClass().hasService(4194304)) {
                                }
                            }
                            d.b("AudioRoute", "Bluetooth SCO device connected");
                            a.this.e();
                            a.this.a(3, 1);
                            return;
                        }
                        return;
                    case 2:
                        d.b("AudioRoute", "Bluetooth SCO device connecting");
                        return;
                    default:
                        d.b("AudioRoute", "Bluetooth SCO device unknown event, state=" + intExtra3);
                        return;
                }
            } else if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra4 = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -99);
                d.a("AudioRoute", "BluetoothAdapter.ACTION_STATE_CHANGED prev " + intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", -99) + ", " + intExtra4);
                switch (intExtra4) {
                    case 10:
                        a.this.a(2, 0);
                        return;
                    case 12:
                        a.this.a(2, 1);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* compiled from: AudioRoutingController */
    private abstract class c implements f {
        private c() {
        }

        public void a(int i) {
            if (i == a()) {
                d.b("AudioRoute", "setState: state not changed!");
            } else {
                a.this.d = a.this.a(i);
            }
        }

        public int a() {
            return 0;
        }

        public void a(int i, int i2) {
            boolean z = true;
            switch (i) {
                case 1:
                    a.this.f = i2;
                    a aVar = a.this;
                    if (i2 < 0) {
                        z = false;
                    }
                    aVar.e = z;
                    return;
                case 2:
                    a aVar2 = a.this;
                    if (i2 != 1) {
                        z = false;
                    }
                    aVar2.g = z;
                    return;
                case 10:
                    a.this.k = i2;
                    a.this.h = true;
                    d.b("AudioRoute", "User set default routing to:" + a.this.g(a.this.k));
                    return;
                case 12:
                    a aVar3 = a.this;
                    if (i2 <= 0) {
                        z = false;
                    }
                    aVar3.n = z;
                    a.this.l();
                    return;
                case 13:
                    a aVar4 = a.this;
                    if (i2 <= 0) {
                        z = false;
                    }
                    aVar4.o = z;
                    a.this.l();
                    return;
                case 14:
                    a aVar5 = a.this;
                    if (i2 <= 0) {
                        z = false;
                    }
                    aVar5.m = z;
                    a.this.l();
                    return;
                case 20:
                    a.this.l = i2;
                    return;
                case 21:
                    a.this.p = i2;
                    return;
                case 22:
                    a aVar6 = a.this;
                    if (i2 <= 0) {
                        z = false;
                    }
                    aVar6.q = z;
                    return;
                default:
                    return;
            }
        }
    }

    /* compiled from: AudioRoutingController */
    private class d extends c {
        private d() {
            super();
        }

        public int a() {
            return 4;
        }
    }

    /* compiled from: AudioRoutingController */
    private class e extends c {
        public e() {
            super();
            if (!a.this.h && a.this.k == -1) {
                if (a.this.l != 0 || !a.this.g()) {
                    a.this.k = 3;
                } else {
                    a.this.k = 1;
                }
            }
            a.this.m();
            d.b("AudioRoute", "Monitor start: default routing: " + a.this.g(a.this.k) + ", current routing: " + a.this.g(a.this.j));
        }

        public int a() {
            return 1;
        }

        public void a(int i, int i2) {
            boolean z = true;
            d.a("AudioRoute", "StartState: onEvent: " + i + ", info: " + i2);
            switch (i) {
                case 1:
                    a.this.f = i2;
                    a aVar = a.this;
                    if (i2 < 0) {
                        z = false;
                    }
                    aVar.e = z;
                    if (!a.this.q && !a.this.g) {
                        if (!a.this.e || a.this.j == i2) {
                            a.this.m();
                            return;
                        } else {
                            a.this.c(i2);
                            return;
                        }
                    } else {
                        return;
                    }
                case 2:
                    if (i2 != 0 || a.this.g) {
                        a aVar2 = a.this;
                        if (i2 != 1) {
                            z = false;
                        }
                        aVar2.g = z;
                        if (a.this.q) {
                            return;
                        }
                        if (a.this.g) {
                            a.this.c(5);
                            return;
                        } else {
                            a.this.m();
                            return;
                        }
                    } else {
                        return;
                    }
                case 3:
                    a.this.t = i2 == 1 ? 1 : 2;
                    if (!a.this.q) {
                        a.this.h();
                        a aVar3 = a.this;
                        if (i2 != 1) {
                            z = false;
                        }
                        aVar3.a(z);
                        return;
                    }
                    return;
                case 11:
                    a.this.i = i2;
                    if (!a.this.q) {
                        a.this.m();
                        return;
                    }
                    return;
                case 21:
                    a.this.p = i2;
                    if (!a.this.q) {
                        a.this.d(a.this.j);
                        return;
                    }
                    return;
                case 22:
                    d.b("AudioRoute", "phone state changed: " + i2);
                    a aVar4 = a.this;
                    if (i2 <= 0) {
                        z = false;
                    }
                    aVar4.q = z;
                    if (i2 == 0) {
                        a.this.m();
                        return;
                    } else {
                        a.this.j = -1;
                        return;
                    }
                default:
                    super.a(i, i2);
                    return;
            }
        }
    }

    /* compiled from: AudioRoutingController */
    private interface f {
        void a(int i);

        void a(int i, int i2);
    }

    /* compiled from: AudioRoutingController */
    private class g extends c {
        public g() {
            super();
            a.this.j();
            a.this.e();
            a.this.h = false;
            a.this.i = -1;
            a.this.j = -1;
            a.this.k = -1;
            a.this.v = 0;
            d.b("AudioRoute", "Monitor stopped");
        }

        public int a() {
            return 2;
        }

        public void a(int i, int i2) {
            d.a("AudioRoute", "StopState: onEvent: " + i + ", info: " + i2);
            try {
                AudioManager h = a.this.h();
                switch (i) {
                    case 11:
                        h.setSpeakerphoneOn(i2 == 1);
                        a.this.j = i2 == 1 ? 3 : -1;
                        a.this.i = i2;
                        a.this.b(a.this.n());
                        return;
                    default:
                        super.a(i, i2);
                        return;
                }
            } catch (Exception e) {
                d.a("AudioRoute", "onEvent: Exception ", (Throwable) e);
            }
        }
    }

    /* compiled from: AudioRoutingController */
    private class h extends Handler {
        public h(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            a.this.d.a(message.what, message.arg1);
        }
    }

    /* compiled from: AudioRoutingController */
    private class i extends BroadcastReceiver {
        private i() {
        }

        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equalsIgnoreCase("android.intent.action.HEADSET_PLUG") && intent.hasExtra(XiaomiOAuthConstants.EXTRA_STATE_2)) {
                int intExtra = intent.getIntExtra(XiaomiOAuthConstants.EXTRA_STATE_2, -1);
                if (intExtra == 1) {
                    if (intent.getIntExtra("microphone", -1) == 1) {
                        d.b("AudioRoute", "Headset w/ mic connected");
                        a.this.a(1, 0);
                        return;
                    }
                    d.b("AudioRoute", "Headset w/o mic connected");
                    a.this.a(1, 2);
                } else if (intExtra == 0) {
                    d.b("AudioRoute", "Headset disconnected");
                    a.this.a(1, -1);
                } else {
                    d.b("AudioRoute", "Headset unknown event detected, state=" + intExtra);
                }
            }
        }
    }

    private void d() {
        d.a("AudioRoute", "start bluetooth timer");
        this.b.postDelayed(this.w, IPC.LogoutAsyncTellServerTimeout);
    }

    /* access modifiers changed from: private */
    public void e() {
        d.a("AudioRoute", "cancel bluetooth timer");
        this.b.removeCallbacks(this.w);
    }

    /* access modifiers changed from: private */
    public f a(int i2) {
        if (i2 == 2) {
            return new g();
        }
        if (i2 == 1) {
            return new e();
        }
        return new d();
    }

    public a(Context context, C0079a aVar) {
        this.a = new WeakReference<>(context);
        this.c = new WeakReference<>(aVar);
    }

    public int a() {
        d.b("AudioRoute", "initialize +");
        Context context = (Context) this.a.get();
        if (context == null) {
            d.c("AudioRoute", "context has been GCed");
            return -1;
        }
        AudioManager h2 = h();
        if (h2 == null) {
            d.c("AudioRoute", "invalid context: can't get AudioManager");
            return -1;
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.b = new h(myLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.b = new h(mainLooper);
            } else {
                this.b = null;
            }
        }
        if (this.x == null) {
            this.x = new i();
        }
        this.e = h2.isWiredHeadsetOn();
        this.d = a(2);
        d.b("AudioRoute", "Headset setup: Plugged = " + this.e);
        context.registerReceiver(this.x, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        this.r = true;
        if (VERSION.SDK_INT >= 11 || context.checkCallingOrSelfPermission("android.permission.BLUETOOTH") == 0) {
            if (this.B != null) {
                d.d("AudioRoute", "Bluetooth service Listener already been initialized");
            } else {
                try {
                    this.B = new ServiceListener() {
                        public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
                            d.b("AudioRoute", "onServiceConnected " + i + " =? headset(" + 1 + ")");
                            if (i == 1) {
                                d.b("AudioRoute", "on BT service connected: " + i + Token.SEPARATOR + bluetoothProfile);
                                a.this.A = (BluetoothHeadset) bluetoothProfile;
                            }
                        }

                        public void onServiceDisconnected(int i) {
                            d.b("AudioRoute", "onServiceDisconnected " + i + " =? headset(" + 1 + ")");
                            if (i == 1) {
                                d.b("AudioRoute", "on BT service disconnected: " + i);
                                a.this.e();
                                a.this.A = null;
                            }
                        }
                    };
                } catch (Exception e2) {
                    d.c("AudioRoute", "initialize failed: unable to create BluetoothProfile.ServiceListener, err=" + e2.getMessage());
                }
            }
            if (!a(context, "android.permission.BLUETOOTH")) {
                d.d("AudioRoute", "lacks BLUETOOTH permission");
                return 0;
            }
            try {
                this.y = new b();
            } catch (Exception e3) {
                d.c("AudioRoute", "unable to create BluetoothHeadsetBroadcastReceiver, err:" + e3.getMessage());
            }
            this.z = BluetoothAdapter.getDefaultAdapter();
            if (this.z != null) {
                this.z.getProfileProxy(context, this.B, 1);
                if (2 == this.z.getProfileConnectionState(1)) {
                    this.g = true;
                }
                d.b("AudioRoute", "BT headset setup: BTHeadsetPlugged = " + this.g + Token.SEPARATOR + this.A);
                IntentFilter intentFilter = new IntentFilter("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
                intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
                intentFilter.addAction("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
                intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
                Intent registerReceiver = context.registerReceiver(this.y, intentFilter);
                this.s = true;
                if (registerReceiver != null && TextUtils.equals(registerReceiver.getAction(), "android.media.ACTION_SCO_AUDIO_STATE_UPDATED")) {
                    switch (registerReceiver.getIntExtra("android.media.extra.SCO_AUDIO_STATE", 0)) {
                        case 1:
                            d.b("AudioRoute", "initial Bluetooth SCO device connected");
                            this.t = 1;
                            break;
                        default:
                            d.b("AudioRoute", "initial Bluetooth SCO device unconnected");
                            this.t = 3;
                            break;
                    }
                }
                d.b("AudioRoute", "initialize -");
                return 0;
            }
            d.c("AudioRoute", "initialize: failed to get bluetooth adapter!!");
            return 0;
        }
        d.d("AudioRoute", "do not support BT monitoring on this device");
        return 0;
    }

    private void f() {
        if (this.z != null) {
            this.z.closeProfileProxy(1, this.A);
            this.z = null;
        }
        if (this.B != null) {
            this.B = null;
        }
    }

    public void b() {
        d.a("AudioRoute", "uninitialize");
        f();
        Context context = (Context) this.a.get();
        if (context != null) {
            if (this.x != null && this.r) {
                context.unregisterReceiver(this.x);
                this.r = false;
            }
            if (this.y != null && this.s) {
                context.unregisterReceiver(this.y);
                this.s = false;
            }
        }
        this.x = null;
        this.y = null;
    }

    public void c() {
        this.d.a(2);
    }

    public void a(int i2, int i3) {
        d.a("AudioRoute", "sendEvent: [" + i2 + "], extra arg: " + i3 + "... " + this.b);
        if (this.b != null) {
            this.b.sendMessage(this.b.obtainMessage(i2, i3, 0));
        }
    }

    /* access modifiers changed from: private */
    public boolean g() {
        return this.m || (this.n && this.o);
    }

    /* access modifiers changed from: private */
    public AudioManager h() {
        Context context = (Context) this.a.get();
        if (context == null) {
            return null;
        }
        return (AudioManager) context.getSystemService("audio");
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        C0079a aVar = (C0079a) this.c.get();
        if (aVar != null) {
            aVar.c(i2);
        } else {
            d.d("AudioRoute", "failed to get audio routing listener");
        }
    }

    /* access modifiers changed from: private */
    public int c(int i2) {
        d.b("AudioRoute", "set audio output routing from " + g(this.j) + " to " + g(i2));
        try {
            AudioManager h2 = h();
            if (i2 != 5) {
                h2.setSpeakerphoneOn(i2 == 3);
            }
            if (n() != i2) {
                int n2 = n();
                d.b("AudioRoute", "different audio routing from target " + i2 + ", actual routing: " + n2 + "[" + g(n2) + "]");
            }
            d(i2);
            this.j = i2;
            b(i2);
            d.b("AudioRoute", "audio routing changed to " + g(this.j));
        } catch (Exception e2) {
            d.a("AudioRoute", "set audio output routing failed:", (Throwable) e2);
        }
        return 0;
    }

    /* access modifiers changed from: private */
    public int d(int i2) {
        d.a("AudioRoute", "updateBluetoothSco sco started: " + this.u + ", audio route target: " + i2 + "[" + g(i2) + "] current: " + this.j + "[" + g(this.j) + "], engine role: " + this.p);
        if (i2 == 5) {
            if (this.p == 22) {
                this.u = false;
                e();
                j();
            } else {
                this.u = true;
                d();
                i();
            }
        } else if (this.j == 5 && this.u) {
            this.u = false;
            e();
            j();
        }
        return 0;
    }

    private void i() {
        AudioManager h2 = h();
        int mode = h2.getMode();
        d.b("AudioRoute", "try to opening bt sco " + this.v + Token.SEPARATOR + mode + "[" + e(mode) + "] " + this.t + "[" + f(this.t) + "] sco on: " + h2.isBluetoothScoOn());
        if (!h2.isBluetoothScoOn()) {
            this.t = 0;
            this.v++;
            a(h2);
        }
    }

    private String e(int i2) {
        switch (i2) {
            case 0:
                return "MODE_NORMAL";
            case 1:
                return "MODE_RINGTONE";
            case 2:
                return "MODE_IN_CALL";
            case 3:
                return "MODE_IN_COMMUNICATION";
            default:
                return "Unknown " + i2;
        }
    }

    private String f(int i2) {
        switch (i2) {
            case 0:
                return "SCO_CONNECTING";
            case 1:
                return "SCO_CONNECTED";
            case 2:
                return "SCO_DISCONNECTING";
            case 3:
                return "SCO_DISCONNECTED";
            default:
                return "Unknown " + i2;
        }
    }

    private void a(AudioManager audioManager) {
        int mode = audioManager.getMode();
        d.b("AudioRoute", "doStartBTSco " + VERSION.SDK_INT + " sco on: " + audioManager.isBluetoothScoOn() + Token.SEPARATOR + mode + "[" + e(mode) + "]");
        if (VERSION.SDK_INT < 22) {
            audioManager.setStreamMute(0, true);
        } else {
            audioManager.setStreamVolume(0, 0, 0);
        }
        audioManager.setMode(2);
        audioManager.setSpeakerphoneOn(false);
        audioManager.setBluetoothScoOn(true);
        audioManager.startBluetoothSco();
        if (this.A != null) {
            try {
                this.A.getClass().getMethod("connectAudio", new Class[0]).invoke(this.A, new Object[0]);
            } catch (NoSuchMethodException e2) {
                ThrowableExtension.printStackTrace(e2);
            } catch (IllegalAccessException e3) {
                ThrowableExtension.printStackTrace(e3);
            } catch (InvocationTargetException e4) {
                ThrowableExtension.printStackTrace(e4);
            }
        }
        audioManager.setMode(mode);
        d.a("AudioRoute", "doStartBTSco done sco on: " + audioManager.isBluetoothScoOn() + Token.SEPARATOR + audioManager.getMode() + "[" + e(audioManager.getMode()) + "]");
    }

    private void b(AudioManager audioManager) {
        d.b("AudioRoute", "doStopBTSco " + VERSION.SDK_INT + " sco on: " + audioManager.isBluetoothScoOn());
        audioManager.setBluetoothScoOn(false);
        audioManager.stopBluetoothSco();
        if (this.A != null) {
            try {
                this.A.getClass().getMethod("disconnectAudio", new Class[0]).invoke(this.A, new Object[0]);
            } catch (NoSuchMethodException e2) {
                ThrowableExtension.printStackTrace(e2);
            } catch (IllegalAccessException e3) {
                ThrowableExtension.printStackTrace(e3);
            } catch (InvocationTargetException e4) {
                ThrowableExtension.printStackTrace(e4);
            }
        }
        if (VERSION.SDK_INT < 22) {
            audioManager.setStreamMute(0, false);
        }
    }

    /* access modifiers changed from: private */
    public void j() {
        AudioManager h2 = h();
        int mode = h2.getMode();
        d.b("AudioRoute", "try to stopping bt sco " + mode + "[" + e(mode) + "] " + this.t + "[" + f(this.t) + "] sco on: " + h2.isBluetoothScoOn());
        if (!h2.isBluetoothScoOn()) {
            this.t = 3;
        } else {
            this.t = 2;
        }
        b(h2);
    }

    /* access modifiers changed from: private */
    public void a(boolean z2) {
        this.v = 0;
    }

    /* access modifiers changed from: private */
    public void k() {
        boolean z2;
        AudioManager h2 = h();
        if (this.A == null) {
            d.d("AudioRoute", "no bluetooth profile connected");
            return;
        }
        List connectedDevices = this.A.getConnectedDevices();
        if (connectedDevices.size() > 0) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) connectedDevices.get(0);
            Object obj = null;
            try {
                obj = this.A.getClass().getMethod("isAudioOn", new Class[0]).invoke(this.A, new Object[0]);
            } catch (NoSuchMethodException e2) {
                ThrowableExtension.printStackTrace(e2);
            } catch (IllegalAccessException e3) {
                ThrowableExtension.printStackTrace(e3);
            } catch (InvocationTargetException e4) {
                ThrowableExtension.printStackTrace(e4);
            }
            if (this.A.isAudioConnected(bluetoothDevice) || (obj != null && ((Boolean) obj).booleanValue())) {
                d.a("AudioRoute", "SCO connected with " + bluetoothDevice.getName());
                z2 = true;
            } else {
                d.a("AudioRoute", "SCO is not connected with " + bluetoothDevice.getName());
                z2 = false;
            }
        } else {
            d.d("AudioRoute", "no bluetooth device connected.");
            z2 = false;
        }
        if (this.v < 1) {
            d.a("AudioRoute", "attemps trying, bt sco started: " + this.u + " sco connected: " + z2 + Token.SEPARATOR + this.v + " times " + this.t + "[" + f(this.t) + "]");
            if (this.u && !z2) {
                d();
                this.v++;
                a(h2);
                return;
            }
            return;
        }
        d.c("AudioRoute", "start bluetooth sco timeout, actual routing: " + n());
        this.v = 0;
        if (this.c.get() != null) {
            ((C0079a) this.c.get()).d(GroupCmdID.CID_GROUP_INFO_RESPONSE_VALUE);
        }
    }

    /* access modifiers changed from: private */
    public void l() {
        if (this.h) {
            return;
        }
        if (g() && this.k == 3) {
            this.k = 1;
            d.b("AudioRoute", "update DefaultRouting to: " + g(this.k));
        } else if (!g() && this.k == 1) {
            this.k = 3;
        }
    }

    /* access modifiers changed from: private */
    public void m() {
        int i2 = 1;
        if (this.i == 1) {
            d.b("AudioRoute", "reset(force) audio routing, default routing: " + g(this.k) + ", current routing: " + g(this.j) + ", target routing: " + g(3) + ", actual system routing:" + g(n()));
            if (this.j != 3 || n() != 3) {
                c(3);
                return;
            }
            return;
        }
        if (this.g) {
            i2 = 5;
        } else if (this.e) {
            i2 = this.f;
        } else if (this.i != 0) {
            i2 = this.k;
        }
        d.b("AudioRoute", "reset audio routing, default routing: " + g(this.k) + ", current routing: " + g(this.j) + ", target routing: " + g(i2) + ", actual system routing: " + g(n()));
        if (this.j != i2 || n() != this.j) {
            c(i2);
        }
    }

    /* access modifiers changed from: private */
    public String g(int i2) {
        switch (i2) {
            case -1:
                return "Default";
            case 0:
                return "Headset";
            case 1:
                return "Earpiece";
            case 2:
                return "HeadsetOnly";
            case 3:
                return "Speakerphone";
            case 4:
                return "Loudspeaker";
            case 5:
                return "HeadsetBluetooth";
            default:
                return "Unknown";
        }
    }

    /* access modifiers changed from: private */
    public int n() {
        AudioManager h2 = h();
        if (h2.isSpeakerphoneOn()) {
            return 3;
        }
        if (h2.isBluetoothScoOn() || h2.isBluetoothA2dpOn()) {
            return 5;
        }
        if (h2.isWiredHeadsetOn()) {
            return 0;
        }
        return 1;
    }

    /* access modifiers changed from: protected */
    public boolean a(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }
}
