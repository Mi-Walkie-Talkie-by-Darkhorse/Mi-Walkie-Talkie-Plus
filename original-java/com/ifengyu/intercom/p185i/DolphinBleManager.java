package com.ifengyu.intercom.p185i;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p153d.CustomDataMerge;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateDeviceService;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.device.oldDevice.p176v.ConnectionConfiguration;
import com.ifengyu.intercom.device.oldDevice.p176v.OldBleDeviceDbManager;
import com.ifengyu.intercom.device.oldDevice.p177w.p179b.DolphinCommandHelper;
import com.ifengyu.intercom.device.oldDevice.p180x.C3841c;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.event.StateUpdateEvent;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.MobReportUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.utils.C4971k;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.UUID;
import no.nordicsemi.android.ble.RequestQueue;
import no.nordicsemi.android.ble.WriteRequest;
import no.nordicsemi.android.ble.data.DataMerger;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import no.nordicsemi.android.ble.p307v2.InvalidRequestCallback;
import no.nordicsemi.android.ble.p307v2.SuccessCallback;
import org.bouncycastle.crypto.tls.CipherSuite;

/* renamed from: com.ifengyu.intercom.i.u0 */
/* loaded from: classes2.dex */
public class DolphinBleManager extends BaseBleManager {

    /* renamed from: A */
    public static final UUID f13783A = DeviceConstants.f13913a;

    /* renamed from: B */
    public static final UUID f13784B = DeviceConstants.f13915c;

    /* renamed from: C */
    public static final UUID f13785C = DeviceConstants.f13916d;

    /* renamed from: D */
    public static final UUID f13786D = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    /* renamed from: E */
    private static int f13787E = 1;

    /* renamed from: r */
    private final Handler f13788r;

    /* renamed from: s */
    private SharedPreferences.Editor f13789s;

    /* renamed from: t */
    private boolean f13790t;

    /* renamed from: u */
    private StateUpdateEvent f13791u;

    /* renamed from: v */
    private boolean f13792v;

    /* renamed from: w */
    private boolean f13793w;

    /* renamed from: x */
    private final HashMap<Integer, DolphinChannelModel> f13794x;

    /* renamed from: y */
    private final HashMap<Integer, DolphinChannelModel> f13795y;

    /* renamed from: z */
    private final Runnable f13796z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3896a {

        /* renamed from: a */
        static final /* synthetic */ int[] f13797a;

        static {
            int[] iArr = new int[MitalkProtos.CHOPTION.values().length];
            f13797a = iArr;
            try {
                iArr[MitalkProtos.CHOPTION.ST_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13797a[MitalkProtos.CHOPTION.ST_QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13797a[MitalkProtos.CHOPTION.CH_INSERT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13797a[MitalkProtos.CHOPTION.CH_MODIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13797a[MitalkProtos.CHOPTION.CH_QUERY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13797a[MitalkProtos.CHOPTION.CH_DELETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$b */
    /* loaded from: classes2.dex */
    class C3897b implements SuccessCallback {
        C3897b() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8654f(str, "writeDescriptor notify value onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$c */
    /* loaded from: classes2.dex */
    class C3898c implements FailCallback {
        C3898c() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8657c(str, "writeDescriptor notify value onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$d */
    /* loaded from: classes2.dex */
    class C3899d implements SuccessCallback {
        C3899d() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8654f(str, "enableNotifications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$e */
    /* loaded from: classes2.dex */
    class C3900e implements FailCallback {
        C3900e() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8657c(str, "enableNotifications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$f */
    /* loaded from: classes2.dex */
    class C3901f implements SuccessCallback {
        C3901f() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8654f(str, "writeDescriptor indicate value onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$g */
    /* loaded from: classes2.dex */
    class C3902g implements FailCallback {
        C3902g() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8657c(str, "writeDescriptor indicate value onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$h */
    /* loaded from: classes2.dex */
    class C3903h implements SuccessCallback {
        C3903h() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8654f(str, "enableIndications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$i */
    /* loaded from: classes2.dex */
    class C3904i implements FailCallback {
        C3904i() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) DolphinBleManager.this).f13899m;
            C4971k.m8657c(str, "enableIndications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.u0$j */
    /* loaded from: classes2.dex */
    public class RunnableC3905j implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f13806a;

        RunnableC3905j(String str) {
            this.f13806a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinBleManager.this.m12327k1(this.f13806a);
        }
    }

    public DolphinBleManager(@NonNull Context context) {
        super(context);
        this.f13788r = new Handler(Looper.getMainLooper());
        this.f13790t = false;
        this.f13792v = true;
        this.f13793w = true;
        this.f13794x = new HashMap<>(20);
        this.f13795y = new HashMap<>(20);
        this.f13796z = new Runnable() { // from class: com.ifengyu.intercom.i.e
            @Override // java.lang.Runnable
            public final void run() {
                DolphinBleManager.this.m12354J0();
            }
        };
        this.f13789s = MiTalkClientUtil.m11207i().edit();
    }

    /* renamed from: A0 */
    private void m12367A0(MitalkProtos.Command command) {
        MitalkProtos.ParamUpdate paramResp = command.getParamResp();
        String str = this.f13899m;
        C4971k.m8648l(str, "hasParamResp:\n" + paramResp.toString());
        m12336b1(paramResp);
        MiBus.getInstance().m6412i(paramResp);
        if (!paramResp.hasShareLoc() || paramResp.hasVersionMCU() || paramResp.hasVersionHW()) {
            return;
        }
        if (paramResp.getShareLoc() != 0) {
            MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
        } else if (MiTalkClientUtil.m11222a0()) {
        } else {
            MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
        }
    }

    /* renamed from: B0 */
    private void m12365B0(MitalkProtos.Command command) {
        MitalkProtos.ParamUpdate paramUpdate = command.getParamUpdate();
        String str = this.f13899m;
        C4971k.m8648l(str, "hasParamUpdate:\n" + paramUpdate.toString());
        m12336b1(paramUpdate);
        MiBus.getInstance().m6412i(paramUpdate);
        if (paramUpdate.hasShareLoc() && !paramUpdate.hasVersionMCU() && !paramUpdate.hasVersionHW()) {
            if (paramUpdate.getShareLoc() != 0) {
                MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
            } else if (MiTalkClientUtil.m11222a0()) {
            } else {
                MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
            }
        } else if (paramUpdate.hasShareLoc() && paramUpdate.hasVersionMCU() && paramUpdate.hasVersionHW() && paramUpdate.getShareLoc() == 1 && ShareLocationService.m10698e() == null) {
            MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
        }
    }

    /* renamed from: B1 */
    private void m12364B1(byte[] bArr, int i) {
        bArr[0] = -2;
        bArr[1] = 1;
        C3841c.m12455g(bArr, i, 2, 2);
    }

    /* renamed from: C0 */
    private void m12363C0(MitalkProtos.Command command) {
        MitalkProtos.StateUpdate stateResp = command.getStateResp();
        if (stateResp.getResult() == MitalkProtos.STATECODE.SUCCESS) {
            int i = MiTalkClientUtil.f14440a;
            if (i == 1) {
                m12338Z0(stateResp);
            } else if (i == 2) {
                m12337a1(stateResp);
            }
        }
        if (C4971k.m8651i()) {
            String str = this.f13899m;
            C4971k.m8648l(str, "hasStateResp:\n" + stateResp.toString());
        }
        this.f13791u = new StateUpdateEvent(command.getStateResp());
        MiBus.getInstance().m6412i(this.f13791u);
        if (stateResp.getOption() == MitalkProtos.CHOPTION.ST_QUERY) {
            if ((stateResp.hasCh1() && stateResp.getCh1().getType() == MitalkProtos.CHTYPE.SOS) || (stateResp.hasCh2() && stateResp.getCh2().getType() == MitalkProtos.CHTYPE.SOS)) {
                if (!MiTalkClientUtil.m11222a0()) {
                    MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                }
            } else if (MiTalkClientUtil.m11222a0() && !MiTalkClientUtil.m11224Z()) {
                MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
            }
            m12335c1(stateResp);
        }
    }

    /* renamed from: C1 */
    private void m12362C1(String str) {
        this.f13788r.postDelayed(new RunnableC3905j(str), 1000L);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: D1 */
    private void m12360D1(String str) {
        Observable.just(str).map(new Function() { // from class: com.ifengyu.intercom.i.c
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DolphinBleManager.this.m12346R0((String) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.i.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DolphinBleManager.this.m12344T0((ConnectionConfiguration) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.i.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DolphinBleManager.this.m12342V0((Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G0 */
    public static /* synthetic */ int m12357G0(DolphinChannelModel dolphinChannelModel, DolphinChannelModel dolphinChannelModel2) {
        return dolphinChannelModel.getNo() - dolphinChannelModel2.getNo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public static /* synthetic */ int m12356H0(DolphinChannelModel dolphinChannelModel, DolphinChannelModel dolphinChannelModel2) {
        return dolphinChannelModel.getNo() - dolphinChannelModel2.getNo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I0 */
    public /* synthetic */ void m12354J0() {
        m12340X0(6);
        m339l().mo418f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K0 */
    public /* synthetic */ void m12352L0(BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8654f(str, "send data success, device: " + bluetoothDevice.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M0 */
    public /* synthetic */ void m12350N0(BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13899m;
        C4971k.m8657c(str, "send data failed, device: " + bluetoothDevice.toString() + ", status: " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public /* synthetic */ void m12348P0() {
        C4971k.m8647m(this.f13899m, "send data failed, invalid request");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q0 */
    public /* synthetic */ ConnectionConfiguration m12346R0(String str) throws Exception {
        BluetoothDevice m335p = m335p();
        if (m335p != null) {
            OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
            ConnectionConfiguration m12498a = m12497b.m12498a(m335p.getAddress());
            if (m12498a == null) {
                m12498a = new ConnectionConfiguration(m335p.getName(), m335p.getAddress(), str, 1);
            }
            m12498a.m12500g(true);
            m12497b.m12496c(m12498a);
            return m12498a;
        }
        throw new IllegalArgumentException("device is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S0 */
    public /* synthetic */ void m12344T0(ConnectionConfiguration connectionConfiguration) throws Exception {
        RxBus.m11806d().m11805e(new ConnectStateEvent(ConnectStateEvent.STATE_CONNECTED));
        this.f13792v = true;
        this.f13793w = true;
        this.f13903q = true;
        this.f13794x.clear();
        this.f13795y.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U0 */
    public /* synthetic */ void m12342V0(Throwable th) throws Exception {
        C4971k.m8656d(this.f13899m, "update device param failed", th);
    }

    /* renamed from: W0 */
    private MitalkProtos.Command m12341W0(byte[] bArr) {
        int m12456f = C3841c.m12456f(bArr);
        C3841c.m12459c(bArr);
        int m12461a = C3841c.m12461a(bArr);
        int m12457e = C3841c.m12457e(bArr);
        byte[] m12460b = C3841c.m12460b(bArr);
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "parse received pack-->cmdId: " + m12461a + ", version: " + m12456f + ", seq: " + m12457e + ", data: " + ByteUtils.m14367b(m12460b));
        }
        MitalkProtos.Command.Builder newBuilder = MitalkProtos.Command.newBuilder();
        try {
            ((MitalkProtos.Command.Builder) newBuilder.mergeFrom(m12460b, 0, m12460b.length)).build();
        } catch (InvalidProtocolBufferException e) {
            C4971k.m8659a(this.f13899m, "parse protobuf error!!!");
            e.printStackTrace();
        }
        String str2 = this.f13899m;
        C4971k.m8648l(str2, "incoming DolphinCommand: " + m12302x0(newBuilder.build()));
        return newBuilder.build();
    }

    /* renamed from: X0 */
    private void m12340X0(int i) {
        RxBus.m11806d().m11805e(new ConnectEvent(i));
    }

    /* renamed from: Z0 */
    private void m12338Z0(MitalkProtos.StateUpdate stateUpdate) {
        int i = C3896a.f13797a[stateUpdate.getOption().ordinal()];
        if (i == 3 || i == 4 || i == 5) {
            if (stateUpdate.hasCh1() && stateUpdate.hasCh2()) {
                if (stateUpdate.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
                    m12339Y0(BleChannelUtils.m11818c(stateUpdate.getCh1(), stateUpdate.getCh2()));
                    return;
                }
                m12339Y0(BleChannelUtils.m11819b(stateUpdate.getCh1()));
                m12339Y0(BleChannelUtils.m11819b(stateUpdate.getCh2()));
            } else if (stateUpdate.hasCh1()) {
                if (stateUpdate.getCh1().getType() != MitalkProtos.CHTYPE.RELAY) {
                    m12339Y0(BleChannelUtils.m11819b(stateUpdate.getCh1()));
                }
            } else if (!stateUpdate.hasCh2() || stateUpdate.getCh2().getType() == MitalkProtos.CHTYPE.RELAY) {
            } else {
                m12339Y0(BleChannelUtils.m11819b(stateUpdate.getCh2()));
            }
        }
    }

    /* renamed from: a1 */
    private void m12337a1(MitalkProtos.StateUpdate stateUpdate) {
        int i = C3896a.f13797a[stateUpdate.getOption().ordinal()];
        if (i == 3 || i == 4 || i == 5) {
            if (stateUpdate.hasCh1()) {
                m12339Y0(BleChannelUtils.m11819b(stateUpdate.getCh1()));
            }
            if (stateUpdate.hasCh2()) {
                m12339Y0(BleChannelUtils.m11819b(stateUpdate.getCh2()));
            }
        }
    }

    /* renamed from: b1 */
    private void m12336b1(MitalkProtos.ParamUpdate paramUpdate) {
        try {
            if (paramUpdate.hasDeviceId()) {
                this.f13789s.putString("deviceId", String.valueOf(paramUpdate.getDeviceId()));
            }
            if (paramUpdate.hasSosText()) {
                this.f13789s.putString("sosText", new String(paramUpdate.getSosText().toByteArray(), "GB2312"));
            }
            if (paramUpdate.hasDevNameGBK()) {
                MiTalkClientUtil.m11204j0(new String(paramUpdate.getDevNameGBK().toByteArray(), "GB2312"));
            }
            if (paramUpdate.hasVersionBLE()) {
                this.f13789s.putInt("versionBLE", paramUpdate.getVersionBLE());
            }
            if (paramUpdate.hasVersionHW()) {
                this.f13789s.putInt("versionHW", paramUpdate.getVersionHW());
            }
            if (paramUpdate.hasVersionMCU()) {
                this.f13789s.putInt("versionMCU", paramUpdate.getVersionMCU());
            }
            if (paramUpdate.hasShareLoc()) {
                this.f13789s.putBoolean("is_public_loc_info", paramUpdate.getShareLoc() != 0);
            }
            if (paramUpdate.hasStateMode()) {
                if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.SINGLE) {
                    this.f13789s.putBoolean("is_double_frequency_model", false);
                } else if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.DOUBLE) {
                    this.f13789s.putBoolean("is_double_frequency_model", true);
                }
                this.f13789s.putInt("stateMode", paramUpdate.getStateMode().getNumber());
            }
            if (paramUpdate.hasLowPower()) {
                this.f13789s.putBoolean("lowPower", paramUpdate.getLowPower() == MitalkProtos.POWERSTATE.PROHIBITEUPDATE);
            }
            if (paramUpdate.hasActivateChannel()) {
                m12301x1(paramUpdate.getActivateChannel() == 1);
            }
            String str = "mcu_language_type_chinese";
            if (paramUpdate.hasLanguage()) {
                if (paramUpdate.getLanguage() != 0) {
                    str = "mcu_language_type_english";
                }
                MiTalkClientUtil.m11182u0(str);
            } else {
                MiTalkClientUtil.m11182u0("mcu_language_type_chinese");
            }
            this.f13789s.apply();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c1 */
    private void m12335c1(MitalkProtos.StateUpdate stateUpdate) {
        boolean z = false;
        if (stateUpdate.hasCh1() && stateUpdate.hasCh2()) {
            SharedPreferences.Editor editor = this.f13789s;
            MitalkProtos.CHTYPE type = stateUpdate.getCh1().getType();
            MitalkProtos.CHTYPE chtype = MitalkProtos.CHTYPE.SOS;
            editor.putBoolean("is_sos_model", (type == chtype || stateUpdate.getCh2().getType() == chtype) ? true : true);
            this.f13789s.putBoolean("is_double_frequency_model", true);
        } else if (stateUpdate.hasCh1()) {
            this.f13789s.putBoolean("is_double_frequency_model", false);
            this.f13789s.putBoolean("is_sos_model", stateUpdate.getCh1().getType() == MitalkProtos.CHTYPE.SOS);
        } else if (stateUpdate.hasCh2()) {
            this.f13789s.putBoolean("is_double_frequency_model", false);
            this.f13789s.putBoolean("is_sos_model", stateUpdate.getCh2().getType() == MitalkProtos.CHTYPE.SOS);
        }
        if (stateUpdate.hasStateMode()) {
            this.f13789s.putInt("stateMode", stateUpdate.getStateMode().getNumber());
        }
        this.f13789s.apply();
    }

    /* renamed from: j1 */
    private void m12328j1(Message message) {
        m12334d1(m12308u0(message));
    }

    /* renamed from: u0 */
    private byte[] m12308u0(Message message) {
        byte[] byteArray = message.toByteArray();
        int length = byteArray.length;
        int i = length + 8;
        byte[] bArr = new byte[i];
        m12299y1(bArr, i, 10009, f13787E);
        System.arraycopy(byteArray, 0, bArr, 8, length);
        f13787E = (f13787E + 1) % 65535;
        return bArr;
    }

    /* renamed from: x0 */
    public static String m12302x0(MitalkProtos.Command command) {
        return command.hasConnectQuery() ? "ConnectQuery" : command.hasConnectResp() ? "ConnectResp" : command.hasHeartbeat() ? "Heartbeat" : command.hasControl() ? "Control" : command.hasParamQuery() ? "ParamQuery" : command.hasParamResp() ? "ParamResp" : command.hasParamUpdate() ? "ParamUpdate" : command.hasStateQuery() ? "StateQuery" : command.hasStateResp() ? "StateResp" : command.hasLocationSync() ? "LocationSync" : command.hasLocationCtl() ? "LocationCtl" : command.hasFileReq() ? "FileReq" : command.hasFilePack() ? "FilePack" : command.hasFileResp() ? "FileResponse" : command.hasUpdateResponse() ? "UpdateResponse" : "UnknownType";
    }

    /* renamed from: y1 */
    private void m12299y1(byte[] bArr, int i, int i2, int i3) {
        bArr[0] = -2;
        bArr[1] = 1;
        C3841c.m12455g(bArr, i, 2, 2);
        C3841c.m12455g(bArr, i2, 4, 2);
        C3841c.m12455g(bArr, i3, 6, 2);
    }

    /* renamed from: z0 */
    private void m12298z0(MitalkProtos.Command command) {
        this.f13788r.removeCallbacks(this.f13796z);
        MitalkProtos.Connect connectResp = command.getConnectResp();
        MitalkProtos.CONNCODE connCode = connectResp.getConnCode();
        if (connCode == MitalkProtos.CONNCODE.ALLOW) {
            C4971k.m8659a(this.f13899m, "Allow to connect");
            MiTalkClientUtil.m11223a();
            MiTalkClientUtil.m11272A0(1);
            MiTalkClientUtil.m11206i0(m335p().getAddress());
            m12340X0(1);
            MobReportUtils.m11810a(1);
            m12313r1(UserCache.getUserInfo().userId, UserCache.getUserInfo().nickname);
            m12360D1(String.valueOf(connectResp.getDeviceId()));
        } else if (connCode == MitalkProtos.CONNCODE.WAIT) {
            C4971k.m8659a(this.f13899m, "waiting confirm connection");
            m12340X0(3);
            this.f13788r.postDelayed(this.f13796z, 20000L);
        } else if (connCode == MitalkProtos.CONNCODE.REFUSE_LOWPOWER) {
            C4971k.m8647m(this.f13899m, "connect failed, device low power");
            m12340X0(4);
            m339l().mo418f();
        } else if (connCode == MitalkProtos.CONNCODE.REFUSE) {
            C4971k.m8647m(this.f13899m, "connect failed, device refused");
            m12340X0(2);
            m339l().mo418f();
        } else {
            C4971k.m8647m(this.f13899m, "connect failed, other reason");
            m12340X0(7);
            m339l().mo418f();
        }
    }

    /* renamed from: A1 */
    public void m12366A1(boolean z) {
        this.f13793w = z;
    }

    /* renamed from: D0 */
    public boolean m12361D0() {
        return this.f13790t;
    }

    /* renamed from: E0 */
    public boolean m12359E0() {
        return this.f13792v;
    }

    /* renamed from: F0 */
    public boolean m12358F0() {
        return this.f13793w;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: P */
    protected void mo12004P(RequestQueue requestQueue) {
        int properties = this.f13901o.getProperties();
        if ((properties & 16) > 0) {
            WriteRequest m344L = m344L(this.f13901o.getDescriptor(f13786D), BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            m344L.m383K(new C3898c());
            m344L.m384J(new C3897b());
            requestQueue.m434H(m344L);
            WriteRequest m336o = m336o(this.f13901o);
            m336o.m383K(new C3900e());
            m336o.m384J(new C3899d());
            requestQueue.m434H(m336o);
        }
        if ((properties & 32) > 0) {
            WriteRequest m344L2 = m344L(this.f13901o.getDescriptor(f13786D), BluetoothGattDescriptor.ENABLE_INDICATION_VALUE);
            m344L2.m383K(new C3902g());
            m344L2.m384J(new C3901f());
            requestQueue.m434H(m344L2);
            WriteRequest m337n = m337n(this.f13901o);
            m337n.m383K(new C3904i());
            m337n.m384J(new C3903h());
            requestQueue.m434H(m337n);
        }
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: S */
    protected DataMerger mo12001S() {
        return new CustomDataMerge();
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: U */
    protected UUID mo11999U() {
        return f13785C;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: V */
    protected UUID mo11998V() {
        return f13783A;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: W */
    protected int mo11997W() {
        return CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384;
    }

    /* renamed from: Y0 */
    public void m12339Y0(DolphinChannelModel dolphinChannelModel) {
        if (dolphinChannelModel == null || dolphinChannelModel.getType() < 0) {
            return;
        }
        if (dolphinChannelModel.getType() == 2) {
            this.f13794x.put(Integer.valueOf(dolphinChannelModel.getNo()), dolphinChannelModel);
        } else if (dolphinChannelModel.getType() == 8) {
            this.f13795y.put(Integer.valueOf(dolphinChannelModel.getNo()), dolphinChannelModel);
        }
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: a */
    public void mo305a(@NonNull BluetoothDevice bluetoothDevice) {
        super.mo305a(bluetoothDevice);
        DeviceModel mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(bluetoothDevice.getAddress());
        if (mo14239f != null) {
            m12362C1(mo14239f.getDeviceId());
        } else {
            m12362C1(null);
        }
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: b0 */
    protected UUID mo11992b0() {
        return f13784B;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: c0 */
    protected void mo11991c0(BluetoothDevice bluetoothDevice, byte[] bArr) {
        MitalkProtos.Command m12341W0 = m12341W0(bArr);
        if (m12341W0.hasConnectResp()) {
            MiTalkClientUtil.f14440a = Math.min(2, m12341W0.getConnectResp().getVersion());
            m12298z0(m12341W0);
        }
        if (m12341W0.hasLocationSync()) {
            MiBus.getInstance().m6412i(m12341W0.getLocationSync());
        }
        if (m12341W0.hasParamUpdate()) {
            m12365B0(m12341W0);
        }
        if (m12341W0.hasParamResp()) {
            m12367A0(m12341W0);
        }
        if (m12341W0.hasStateResp()) {
            m12363C0(m12341W0);
        }
        if (m12341W0.hasFileResp() || m12341W0.hasUpdateResponse()) {
            DolphinUpdateDeviceService.m13148a().m13147b(m12341W0);
        }
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: d */
    public void mo302d(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo302d(bluetoothDevice, i);
        this.f13788r.removeCallbacks(this.f13796z);
        m11983k0(bluetoothDevice);
        MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
    }

    /* renamed from: d1 */
    protected void m12334d1(byte[] bArr) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f13900n;
        if (bluetoothGattCharacteristic == null) {
            C4971k.m8657c(this.f13899m, "send data failed, device may be disconnected");
            return;
        }
        WriteRequest m346J = m346J(bluetoothGattCharacteristic, bArr);
        m346J.m372V();
        m346J.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.i.f
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                DolphinBleManager.this.m12352L0(bluetoothDevice);
            }
        });
        m346J.m383K(new FailCallback() { // from class: com.ifengyu.intercom.i.h
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                DolphinBleManager.this.m12350N0(bluetoothDevice, i);
            }
        });
        m346J.m379O(new InvalidRequestCallback() { // from class: com.ifengyu.intercom.i.j
            @Override // no.nordicsemi.android.ble.p307v2.InvalidRequestCallback
            /* renamed from: a */
            public final void mo362a() {
                DolphinBleManager.this.m12348P0();
            }
        });
        m346J.mo418f();
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: e */
    public void mo301e(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo301e(bluetoothDevice, i);
        m12340X0(7);
    }

    /* renamed from: e1 */
    public void m12333e1(DolphinChannelModel dolphinChannelModel, boolean z) {
        if (z) {
            m12311s1(MitalkProtos.CHOPTION.CH_DELETE, dolphinChannelModel, null);
        } else {
            m12311s1(MitalkProtos.CHOPTION.CH_DELETE, null, dolphinChannelModel);
        }
    }

    /* renamed from: f1 */
    public void m12332f1(DolphinChannelModel dolphinChannelModel) {
        if (MiTalkClientUtil.f14440a == 1 && dolphinChannelModel.getType() == 8) {
            m12311s1(MitalkProtos.CHOPTION.CH_INSERT, new DolphinChannelModel(dolphinChannelModel.getNo(), dolphinChannelModel.getType(), dolphinChannelModel.getName(), dolphinChannelModel.getFreq(), dolphinChannelModel.getTone(), 0, 0), new DolphinChannelModel(dolphinChannelModel.getNo(), dolphinChannelModel.getType(), dolphinChannelModel.getName(), dolphinChannelModel.getFreq2(), dolphinChannelModel.getTone2(), 0, 0));
        } else {
            m12311s1(MitalkProtos.CHOPTION.CH_INSERT, dolphinChannelModel, null);
        }
    }

    /* renamed from: g1 */
    public void m12331g1(DolphinChannelModel dolphinChannelModel) {
        if (MiTalkClientUtil.f14440a == 1 && dolphinChannelModel.getType() == 8) {
            m12311s1(MitalkProtos.CHOPTION.CH_MODIFY, new DolphinChannelModel(dolphinChannelModel.getNo(), dolphinChannelModel.getType(), dolphinChannelModel.getName(), dolphinChannelModel.getFreq(), dolphinChannelModel.getTone(), 0, 0), new DolphinChannelModel(dolphinChannelModel.getNo(), dolphinChannelModel.getType(), dolphinChannelModel.getName(), dolphinChannelModel.getFreq2(), dolphinChannelModel.getTone2(), 0, 0));
        } else {
            m12311s1(MitalkProtos.CHOPTION.CH_MODIFY, dolphinChannelModel, null);
        }
    }

    /* renamed from: h1 */
    public void m12330h1(DolphinChannelModel dolphinChannelModel) {
        m12311s1(MitalkProtos.CHOPTION.CH_QUERY, dolphinChannelModel, null);
    }

    /* renamed from: i1 */
    public void m12329i1(DolphinChannelModel dolphinChannelModel, DolphinChannelModel dolphinChannelModel2) {
        m12311s1(MitalkProtos.CHOPTION.CH_QUERY, dolphinChannelModel, dolphinChannelModel2);
    }

    /* renamed from: k1 */
    public void m12327k1(String str) {
        String str2 = this.f13899m;
        C4971k.m8654f(str2, "startConnectRequest deviceId: " + str);
        m12328j1(DolphinCommandHelper.m12472c(str));
    }

    /* renamed from: l1 */
    public void m12325l1() {
        m12328j1(DolphinCommandHelper.m12474a());
    }

    /* renamed from: m1 */
    public void m12323m1(MitalkProtos.STATEMODE statemode) {
        m12328j1(DolphinCommandHelper.m12467h(statemode));
    }

    /* renamed from: n1 */
    public void m12321n1(int i) {
        m12328j1(DolphinCommandHelper.m12466i(i));
    }

    /* renamed from: o1 */
    public void m12319o1(BeanUserLocation beanUserLocation) {
        m12328j1(DolphinCommandHelper.m12471d(beanUserLocation));
    }

    /* renamed from: p1 */
    public void m12317p1() {
        m12328j1(DolphinCommandHelper.m12470e());
    }

    /* renamed from: q1 */
    public void m12315q1(String str) {
        m12328j1(DolphinCommandHelper.m12469f(str));
    }

    /* renamed from: r1 */
    public void m12313r1(int i, String str) {
        m12328j1(DolphinCommandHelper.m12468g(i, str));
    }

    /* renamed from: s1 */
    public void m12311s1(MitalkProtos.CHOPTION choption, DolphinChannelModel dolphinChannelModel, DolphinChannelModel dolphinChannelModel2) {
        m12328j1(DolphinCommandHelper.m12465j(dolphinChannelModel, dolphinChannelModel2, choption));
    }

    /* renamed from: t0 */
    public void m12310t0(DolphinChannelModel dolphinChannelModel) {
        if (dolphinChannelModel == null || dolphinChannelModel.getType() < 0) {
            return;
        }
        if (dolphinChannelModel.getType() == 2) {
            this.f13794x.remove(Integer.valueOf(dolphinChannelModel.getNo()));
        } else if (dolphinChannelModel.getType() == 8) {
            this.f13795y.remove(Integer.valueOf(dolphinChannelModel.getNo()));
        }
    }

    /* renamed from: t1 */
    public void m12309t1() {
        m12311s1(MitalkProtos.CHOPTION.ST_QUERY, null, null);
    }

    /* renamed from: u1 */
    public void m12307u1(DolphinChannelModel dolphinChannelModel, boolean z) {
        if (z) {
            m12311s1(MitalkProtos.CHOPTION.ST_UPDATE, dolphinChannelModel, null);
        } else {
            m12311s1(MitalkProtos.CHOPTION.ST_UPDATE, null, dolphinChannelModel);
        }
    }

    /* renamed from: v0 */
    public StateUpdateEvent m12306v0() {
        return this.f13791u;
    }

    /* renamed from: v1 */
    public void m12305v1(Message message) {
        m12328j1(message);
    }

    /* renamed from: w0 */
    public ArrayList<DolphinChannelModel> m12304w0() {
        ArrayList<DolphinChannelModel> arrayList = new ArrayList<>(this.f13794x.values());
        Collections.sort(arrayList, C3876k.f13752a);
        return arrayList;
    }

    /* renamed from: w1 */
    public void m12303w1(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 4];
        m12364B1(bArr2, 10008);
        System.arraycopy(bArr, 0, bArr2, 4, length);
        m12334d1(bArr2);
    }

    /* renamed from: x1 */
    public void m12301x1(boolean z) {
        this.f13790t = z;
    }

    /* renamed from: y0 */
    public ArrayList<DolphinChannelModel> m12300y0() {
        ArrayList<DolphinChannelModel> arrayList = new ArrayList<>(this.f13795y.values());
        Collections.sort(arrayList, C3872i.f13748a);
        return arrayList;
    }

    /* renamed from: z1 */
    public void m12297z1(boolean z) {
        this.f13792v = z;
    }
}
