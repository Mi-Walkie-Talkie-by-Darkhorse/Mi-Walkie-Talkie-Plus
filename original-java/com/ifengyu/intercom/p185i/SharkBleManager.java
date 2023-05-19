package com.ifengyu.intercom.p185i;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p152c.PacketUtil;
import com.ifengyu.blelib.p153d.CustomDataMerge;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.p176v.ConnectionConfiguration;
import com.ifengyu.intercom.device.oldDevice.p176v.OldBleDeviceDbManager;
import com.ifengyu.intercom.device.oldDevice.p180x.C3840b;
import com.ifengyu.intercom.device.oldDevice.p180x.C3841c;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b.SharkCommand;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b.SharkCommandHelper;
import com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateDeviceService;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.MobReportUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.utils.C4971k;
import com.umeng.analytics.MobclickAgent;
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

/* renamed from: com.ifengyu.intercom.i.y0 */
/* loaded from: classes2.dex */
public class SharkBleManager extends BaseBleManager {

    /* renamed from: w */
    public static final UUID f13878w = DeviceConstants.f13914b;

    /* renamed from: x */
    public static final UUID f13879x = DeviceConstants.f13915c;

    /* renamed from: y */
    public static final UUID f13880y = DeviceConstants.f13916d;

    /* renamed from: z */
    private static int f13881z = 1;

    /* renamed from: r */
    private final Handler f13882r;

    /* renamed from: s */
    private boolean f13883s;

    /* renamed from: t */
    private boolean f13884t;

    /* renamed from: u */
    private final HashMap<Integer, SealSharkChannelModel> f13885u;

    /* renamed from: v */
    private final Runnable f13886v;

    /* compiled from: SharkBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.y0$a */
    /* loaded from: classes2.dex */
    class C3926a implements SuccessCallback {
        C3926a() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) SharkBleManager.this).f13899m;
            C4971k.m8654f(str, "enableNotifications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: SharkBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.y0$b */
    /* loaded from: classes2.dex */
    class C3927b implements FailCallback {
        C3927b() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) SharkBleManager.this).f13899m;
            C4971k.m8657c(str, "enableNotifications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* compiled from: SharkBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.y0$c */
    /* loaded from: classes2.dex */
    class C3928c implements SuccessCallback {
        C3928c() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) SharkBleManager.this).f13899m;
            C4971k.m8654f(str, "enableIndications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: SharkBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.y0$d */
    /* loaded from: classes2.dex */
    class C3929d implements FailCallback {
        C3929d() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) SharkBleManager.this).f13899m;
            C4971k.m8657c(str, "enableIndications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.y0$e */
    /* loaded from: classes2.dex */
    public class RunnableC3930e implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f13891a;

        RunnableC3930e(String str) {
            this.f13891a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkBleManager.this.m12039g1(this.f13891a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.y0$f */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3931f {

        /* renamed from: a */
        static final /* synthetic */ int[] f13893a;

        static {
            int[] iArr = new int[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.values().length];
            f13893a = iArr;
            try {
                iArr[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13893a[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13893a[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13893a[SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public SharkBleManager(@NonNull Context context) {
        super(context);
        this.f13882r = new Handler(Looper.getMainLooper());
        this.f13883s = false;
        this.f13884t = true;
        this.f13885u = new HashMap<>(20);
        this.f13886v = new Runnable() { // from class: com.ifengyu.intercom.i.l0
            @Override // java.lang.Runnable
            public final void run() {
                SharkBleManager.this.m12067E0();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public static /* synthetic */ int m12069C0(SealSharkChannelModel sealSharkChannelModel, SealSharkChannelModel sealSharkChannelModel2) {
        return sealSharkChannelModel.getNo() - sealSharkChannelModel2.getNo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D0 */
    public /* synthetic */ void m12067E0() {
        m12053S0(6);
        m339l().mo418f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F0 */
    public /* synthetic */ void m12065G0(BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8654f(str, "send data success, device: " + bluetoothDevice.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public /* synthetic */ void m12063I0(BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13899m;
        C4971k.m8657c(str, "send data failed, device: " + bluetoothDevice.toString() + ", status: " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public /* synthetic */ void m12061K0() {
        C4971k.m8647m(this.f13899m, "send data failed, invalid request");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ ConnectionConfiguration m12059M0(String str) throws Exception {
        BluetoothDevice m335p = m335p();
        if (m335p != null) {
            OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
            ConnectionConfiguration m12498a = m12497b.m12498a(m335p.getAddress());
            if (m12498a == null) {
                m12498a = new ConnectionConfiguration(m335p.getName(), m335p.getAddress(), str, 4);
            }
            m12498a.m12500g(true);
            m12497b.m12496c(m12498a);
            return m12498a;
        }
        throw new IllegalArgumentException("device is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public /* synthetic */ void m12057O0(ConnectionConfiguration connectionConfiguration) throws Exception {
        RxBus.m11806d().m11805e(new ConnectStateEvent(ConnectStateEvent.STATE_CONNECTED));
        this.f13884t = true;
        this.f13903q = true;
        this.f13885u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public /* synthetic */ void m12055Q0(Throwable th) throws Exception {
        C4971k.m8656d(this.f13899m, "update device param failed", th);
    }

    /* renamed from: R0 */
    private SharkCommand m12054R0(byte[] bArr) {
        if (C3841c.m12459c(bArr) != bArr.length) {
            C4971k.m8657c(this.f13899m, "received pack length error");
            return null;
        } else if (!m12026p0(bArr)) {
            C4971k.m8657c(this.f13899m, "parse received pack-->invalid crc");
            return null;
        } else {
            int m12456f = C3841c.m12456f(bArr);
            int m12461a = C3841c.m12461a(bArr);
            int m12457e = C3841c.m12457e(bArr);
            byte[] m12458d = C3841c.m12458d(bArr);
            if (C4971k.m8653g()) {
                String str = this.f13899m;
                C4971k.m8659a(str, "parse received pack-->cmdId: " + m12461a + ", version: " + m12456f + ", seq: " + m12457e + ", data: " + ByteUtils.m14367b(m12458d));
            }
            try {
                return SharkCommand.m12956c(m12458d, m12461a);
            } catch (InvalidProtocolBufferException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    /* renamed from: S0 */
    private void m12053S0(int i) {
        RxBus.m11806d().m11805e(new ConnectEvent(i));
    }

    /* renamed from: U0 */
    private void m12051U0(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        SharkProtos.SHARK_ChannelInfo ch = sHARK_ChannelInfoOperate.getCh();
        if (ch.getChType() != SharkProtos.SHARK_ChannelInfo.SHARK_CHTYPE.SHARK_USERDEF) {
            return;
        }
        int i = C3931f.f13893a[sHARK_ChannelInfoOperate.getOption().ordinal()];
        if (i == 1 || i == 2) {
            if (sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK) {
                m12052T0(BleChannelUtils.m11814g(ch));
            }
        } else if (i != 3) {
            if (i == 4 && sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK) {
                m12024q0(BleChannelUtils.m11814g(ch));
            }
        } else if (sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_QUERY_CONTINUE) {
            m12052T0(BleChannelUtils.m11814g(ch));
        }
    }

    /* renamed from: V0 */
    private void m12050V0(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        if (sHARK_DeviceParam.hasVerHw()) {
            MiTalkClientUtil.m11230V0(sHARK_DeviceParam.getVerHw());
        }
        if (sHARK_DeviceParam.hasVerSoft()) {
            MiTalkClientUtil.m11228W0(sHARK_DeviceParam.getVerSoft());
        }
        try {
            if (sHARK_DeviceParam.hasDeviceName()) {
                MiTalkClientUtil.m11204j0(new String(sHARK_DeviceParam.getDeviceName().toByteArray(), "GB2312"));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (sHARK_DeviceParam.hasActivate()) {
            m12021r1(sHARK_DeviceParam.getActivate() == 1);
        }
        if (sHARK_DeviceParam.hasShareLoc()) {
            MiTalkClientUtil.m11238R0(sHARK_DeviceParam.getShareLoc() == SharkProtos.SHARK_SWITCH.SHARK_ON);
        }
        if (sHARK_DeviceParam.hasCh()) {
            SharkProtos.SHARK_ChannelInfo ch = sHARK_DeviceParam.getCh();
            if (ch.hasChTxPower()) {
                MiTalkClientUtil.m11232U0(ch.getChTxPower());
            }
        }
    }

    /* renamed from: f1 */
    private void m12040f1(SharkCommand sharkCommand) {
        m12049W0(m12015u1(sharkCommand));
    }

    /* renamed from: p0 */
    private boolean m12026p0(byte[] bArr) {
        return ByteUtils.m14366c(PacketUtil.m14341a(bArr, bArr.length - 2, 2), C3840b.m12462a(PacketUtil.m14341a(bArr, 0, bArr.length - 2)));
    }

    /* renamed from: r0 */
    private byte[] m12022r0(byte[] bArr) {
        return C3840b.m12462a(bArr);
    }

    /* renamed from: s1 */
    private void m12019s1(byte[] bArr, int i, int i2, int i3) {
        bArr[0] = -2;
        bArr[1] = 1;
        C3841c.m12455g(bArr, i, 2, 2);
        C3841c.m12455g(bArr, i2, 4, 2);
        C3841c.m12455g(bArr, i3, 6, 2);
    }

    /* renamed from: t0 */
    private void m12018t0(@NonNull BluetoothDevice bluetoothDevice, Message message) {
        if (message instanceof SharkProtos.SHARK_Connect) {
            this.f13882r.removeCallbacks(this.f13886v);
            SharkProtos.SHARK_Connect sHARK_Connect = (SharkProtos.SHARK_Connect) message;
            SharkProtos.SHARK_CONNCODE connCode = sHARK_Connect.getConnCode();
            SharkProtos.SHARK_Connect.SHARK_LANGUAGETYPE language = sHARK_Connect.getLanguage();
            if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_ALLOW) {
                C4971k.m8659a(this.f13899m, "Allow to connect");
                int deviceId = sHARK_Connect.getDeviceId();
                MiTalkClientUtil.m11223a();
                MiTalkClientUtil.m11272A0(4);
                MiTalkClientUtil.m11206i0(bluetoothDevice.getAddress());
                MiTalkClientUtil.m11240Q0(String.valueOf(deviceId));
                MiTalkClientUtil.m11236S0(language.getNumber() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
                m12053S0(1);
                MobReportUtils.m11810a(4);
                m12011w1(String.valueOf(deviceId));
            } else if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_WAIT) {
                C4971k.m8659a(this.f13899m, "waiting confirm connection");
                m12053S0(3);
                this.f13882r.postDelayed(this.f13886v, 20000L);
            } else if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_LOWPOWER) {
                C4971k.m8647m(this.f13899m, "connect failed, device low power");
                m12053S0(4);
                m339l().mo418f();
            } else if (connCode == SharkProtos.SHARK_CONNCODE.SHARK_REFUSE) {
                C4971k.m8647m(this.f13899m, "connect failed, device refused");
                m12053S0(2);
                m339l().mo418f();
            } else {
                C4971k.m8647m(this.f13899m, "connect failed, other reason");
                m12053S0(7);
                m339l().mo418f();
            }
        }
    }

    /* renamed from: u0 */
    private void m12016u0(@NonNull BluetoothDevice bluetoothDevice, @NonNull SharkCommand sharkCommand) {
        Message m12507b = sharkCommand.m12507b();
        int m12508a = sharkCommand.m12508a();
        if (m12508a == 20002) {
            m12018t0(bluetoothDevice, m12507b);
        } else if (m12508a == 20005) {
            m12010x0(m12507b);
        } else if (m12508a == 20008) {
            m12012w0(m12507b);
        } else if (m12508a == 20011) {
            m12014v0(m12507b);
        } else if (m12508a == 20014) {
            SealSharkUpdateDeviceService.m12530a().m12528c(sharkCommand);
        } else if (m12508a == 20016) {
            m12009y0(m12507b);
        } else if (m12508a != 20025) {
        } else {
            m12008z0(m12507b);
            m12025p1();
        }
    }

    /* renamed from: u1 */
    private byte[] m12015u1(SharkCommand sharkCommand) {
        byte[] byteArray = sharkCommand.m12507b().toByteArray();
        int m12508a = sharkCommand.m12508a();
        int length = byteArray.length;
        int i = length + 8;
        int i2 = i + 2;
        byte[] bArr = new byte[i];
        m12019s1(bArr, i2, m12508a, f13881z);
        System.arraycopy(byteArray, 0, bArr, 8, length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(m12022r0(bArr), 0, bArr2, i, 2);
        f13881z = (f13881z + 1) % 65535;
        return bArr2;
    }

    /* renamed from: v0 */
    private void m12014v0(Message message) {
        if (message instanceof SharkProtos.SHARK_ChannelInfoOperate) {
            SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate = (SharkProtos.SHARK_ChannelInfoOperate) message;
            MiBus.getInstance().m6412i(sHARK_ChannelInfoOperate);
            if (sHARK_ChannelInfoOperate.hasCh() && sHARK_ChannelInfoOperate.hasOption()) {
                m12051U0(sHARK_ChannelInfoOperate);
            }
        }
    }

    /* renamed from: v1 */
    private void m12013v1(String str) {
        this.f13882r.postDelayed(new RunnableC3930e(str), 1000L);
    }

    /* renamed from: w0 */
    private void m12012w0(Message message) {
        if (message instanceof SharkProtos.SHARK_ChannelStateOperate) {
            MiBus.getInstance().m6412i((SharkProtos.SHARK_ChannelStateOperate) message);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: w1 */
    private void m12011w1(String str) {
        Observable.just(str).map(new Function() { // from class: com.ifengyu.intercom.i.m0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SharkBleManager.this.m12059M0((String) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.i.o0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SharkBleManager.this.m12057O0((ConnectionConfiguration) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.i.n0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SharkBleManager.this.m12055Q0((Throwable) obj);
            }
        });
    }

    /* renamed from: x0 */
    private void m12010x0(Message message) {
        if (message instanceof SharkProtos.SHARK_DeviceParam) {
            SharkProtos.SHARK_DeviceParam sHARK_DeviceParam = (SharkProtos.SHARK_DeviceParam) message;
            if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK || sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                m12050V0(sHARK_DeviceParam);
                if (sHARK_DeviceParam.hasShareLoc()) {
                    if (sHARK_DeviceParam.getShareLoc() == SharkProtos.SHARK_SWITCH.SHARK_ON && ShareLocationService.m10698e() == null) {
                        MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                    } else if (sHARK_DeviceParam.getShareLoc() == SharkProtos.SHARK_SWITCH.SHARK_OFF && ShareLocationService.m10698e() != null) {
                        MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                    }
                }
            }
            MiBus.getInstance().m6412i(sHARK_DeviceParam);
        }
    }

    /* renamed from: y0 */
    private void m12009y0(Message message) {
        if (message instanceof SharkProtos.SHARK_LocationInfo) {
            MiBus.getInstance().m6412i((SharkProtos.SHARK_LocationInfo) message);
        }
    }

    /* renamed from: z0 */
    private void m12008z0(Message message) {
        if (message instanceof SharkProtos.SHARK_UserActionStatistics) {
            SharkProtos.SHARK_UserActionStatistics sHARK_UserActionStatistics = (SharkProtos.SHARK_UserActionStatistics) message;
            HashMap hashMap = new HashMap();
            if (sHARK_UserActionStatistics.getPowerOn() > 0) {
                hashMap.put("powerOnCount", Integer.valueOf(sHARK_UserActionStatistics.getPowerOn()));
            }
            if (sHARK_UserActionStatistics.getAzimuthMap() > 0) {
                hashMap.put("azimuthMapCount", Integer.valueOf(sHARK_UserActionStatistics.getAzimuthMap()));
            }
            if (sHARK_UserActionStatistics.getFmRadio() > 0) {
                hashMap.put("fmRadioCount", Integer.valueOf(sHARK_UserActionStatistics.getFmRadio()));
            }
            if (sHARK_UserActionStatistics.getQuickTeam() > 0) {
                hashMap.put("quickTeamCount", Integer.valueOf(sHARK_UserActionStatistics.getQuickTeam()));
            }
            if (sHARK_UserActionStatistics.getBluetoothDevice() > 0) {
                hashMap.put("bluetoothDeviceCount", Integer.valueOf(sHARK_UserActionStatistics.getBluetoothDevice()));
            }
            if (sHARK_UserActionStatistics.getHandsFree() > 0) {
                hashMap.put("handsFreeCount", Integer.valueOf(sHARK_UserActionStatistics.getHandsFree()));
            }
            if (sHARK_UserActionStatistics.getChannelScan() > 0) {
                hashMap.put("channelScanCount", Integer.valueOf(sHARK_UserActionStatistics.getChannelScan()));
            }
            if (sHARK_UserActionStatistics.getDoubleFreq() > 0) {
                hashMap.put("doubleFreqCount", Integer.valueOf(sHARK_UserActionStatistics.getDoubleFreq()));
            }
            if (sHARK_UserActionStatistics.getSosMode() > 0) {
                hashMap.put("sosModeCount", Integer.valueOf(sHARK_UserActionStatistics.getSosMode()));
            }
            if (sHARK_UserActionStatistics.getPowerLevel() > 0) {
                hashMap.put("powerLevelCount", Integer.valueOf(sHARK_UserActionStatistics.getPowerLevel()));
            }
            if (sHARK_UserActionStatistics.getBusyLock() > 0) {
                hashMap.put("busyLockCount", Integer.valueOf(sHARK_UserActionStatistics.getBusyLock()));
            }
            if (sHARK_UserActionStatistics.getSquelchTail() > 0) {
                hashMap.put("squelchTailCount", Integer.valueOf(sHARK_UserActionStatistics.getSquelchTail()));
            }
            if (sHARK_UserActionStatistics.getWideNarrow() > 0) {
                hashMap.put("wideNarrowCount", Integer.valueOf(sHARK_UserActionStatistics.getWideNarrow()));
            }
            if (sHARK_UserActionStatistics.getRestoreFactory() > 0) {
                hashMap.put("restoreFactoryCount", Integer.valueOf(sHARK_UserActionStatistics.getRestoreFactory()));
            }
            if (hashMap.isEmpty()) {
                return;
            }
            MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Shark_Device_Event", hashMap);
        }
    }

    /* renamed from: A0 */
    public boolean m12071A0() {
        return this.f13883s;
    }

    /* renamed from: B0 */
    public boolean m12070B0() {
        return this.f13884t;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: P */
    protected void mo12004P(RequestQueue requestQueue) {
        int properties = this.f13901o.getProperties();
        if ((properties & 16) > 0) {
            WriteRequest m336o = m336o(this.f13901o);
            m336o.m383K(new C3927b());
            m336o.m384J(new C3926a());
            requestQueue.m434H(m336o);
        }
        if ((properties & 32) > 0) {
            WriteRequest m337n = m337n(this.f13901o);
            m337n.m383K(new C3929d());
            m337n.m384J(new C3928c());
            requestQueue.m434H(m337n);
        }
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: S */
    protected DataMerger mo12001S() {
        return new CustomDataMerge();
    }

    /* renamed from: T0 */
    public void m12052T0(SealSharkChannelModel sealSharkChannelModel) {
        if (sealSharkChannelModel == null || sealSharkChannelModel.getType() < 0) {
            return;
        }
        this.f13885u.put(Integer.valueOf(sealSharkChannelModel.getNo()), sealSharkChannelModel);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: U */
    protected UUID mo11999U() {
        return f13880y;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: V */
    protected UUID mo11998V() {
        return f13878w;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: W */
    protected int mo11997W() {
        return CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384;
    }

    /* renamed from: W0 */
    protected void m12049W0(byte[] bArr) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f13900n;
        if (bluetoothGattCharacteristic == null) {
            C4971k.m8657c(this.f13899m, "send data failed, device may be disconnected");
            return;
        }
        WriteRequest m346J = m346J(bluetoothGattCharacteristic, bArr);
        m346J.m372V();
        m346J.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.i.p0
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                SharkBleManager.this.m12065G0(bluetoothDevice);
            }
        });
        m346J.m383K(new FailCallback() { // from class: com.ifengyu.intercom.i.r0
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                SharkBleManager.this.m12063I0(bluetoothDevice, i);
            }
        });
        m346J.m379O(new InvalidRequestCallback() { // from class: com.ifengyu.intercom.i.k0
            @Override // no.nordicsemi.android.ble.p307v2.InvalidRequestCallback
            /* renamed from: a */
            public final void mo362a() {
                SharkBleManager.this.m12061K0();
            }
        });
        m346J.mo418f();
    }

    /* renamed from: X0 */
    public void m12048X0(SealSharkChannelModel sealSharkChannelModel) {
        m12040f1(new SharkCommand(20010, SharkCommandHelper.m12949b(sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_DELETE)));
    }

    /* renamed from: Y0 */
    public void m12047Y0(SealSharkChannelModel sealSharkChannelModel) {
        m12040f1(new SharkCommand(20010, SharkCommandHelper.m12949b(sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_INSERT)));
    }

    /* renamed from: Z0 */
    public void m12046Z0(SealSharkChannelModel sealSharkChannelModel) {
        m12040f1(new SharkCommand(20010, SharkCommandHelper.m12949b(sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_MODIFY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: a */
    public void mo305a(@NonNull BluetoothDevice bluetoothDevice) {
        super.mo305a(bluetoothDevice);
        DeviceModel mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(bluetoothDevice.getAddress());
        if (mo14239f != null) {
            m12013v1(mo14239f.getDeviceId());
        } else {
            m12013v1(null);
        }
    }

    /* renamed from: a1 */
    public void m12045a1(SealSharkChannelModel sealSharkChannelModel) {
        m12040f1(new SharkCommand(20009, SharkCommandHelper.m12949b(sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: b0 */
    protected UUID mo11992b0() {
        return f13879x;
    }

    /* renamed from: b1 */
    public void m12044b1() {
        m12040f1(new SharkCommand(20009, SharkCommandHelper.m12948c(SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: c0 */
    protected void mo11991c0(BluetoothDevice bluetoothDevice, byte[] bArr) {
        SharkCommand m12054R0 = m12054R0(bArr);
        if (m12054R0 == null) {
            return;
        }
        m12016u0(bluetoothDevice, m12054R0);
    }

    /* renamed from: c1 */
    public void m12043c1(SealSharkChannelModel sealSharkChannelModel) {
        m12040f1(new SharkCommand(20009, SharkCommandHelper.m12947d(sealSharkChannelModel, SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: d */
    public void mo302d(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo302d(bluetoothDevice, i);
        this.f13882r.removeCallbacks(this.f13886v);
        m11983k0(bluetoothDevice);
        MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
    }

    /* renamed from: d1 */
    public void m12042d1() {
        m12040f1(new SharkCommand(20006, SharkCommandHelper.m12946e(null, true, SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_QUERY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: e */
    public void mo301e(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo301e(bluetoothDevice, i);
        m12053S0(7);
    }

    /* renamed from: e1 */
    public void m12041e1(SealSharkChannelModel sealSharkChannelModel, boolean z) {
        m12040f1(new SharkCommand(20007, SharkCommandHelper.m12946e(sealSharkChannelModel, z, SharkProtos.SHARK_ChannelStateOperate.SHARK_STOPTION.SHARK_ST_UPDATE)));
    }

    /* renamed from: g1 */
    public void m12039g1(String str) {
        String str2 = this.f13899m;
        C4971k.m8654f(str2, "startConnectRequest deviceId: " + str);
        m12040f1(new SharkCommand(20001, SharkCommandHelper.m12945f(str)));
    }

    /* renamed from: h1 */
    public void m12038h1(boolean z) {
        m12040f1(new SharkCommand(20007, SharkCommandHelper.m12942i(z)));
    }

    /* renamed from: i1 */
    public void m12037i1(boolean z) {
        m12040f1(new SharkCommand(20004, SharkCommandHelper.m12939l(z)));
    }

    /* renamed from: j1 */
    public void m12036j1() {
        m12040f1(new SharkCommand(20004, SharkCommandHelper.m12950a()));
    }

    /* renamed from: k1 */
    public void m12035k1() {
        m12040f1(new SharkCommand(20003, SharkCommandHelper.m12944g()));
    }

    /* renamed from: l1 */
    public void m12033l1(BeanUserLocation beanUserLocation) {
        m12040f1(new SharkCommand(20016, SharkCommandHelper.m12943h(beanUserLocation)));
    }

    /* renamed from: m1 */
    public void m12031m1(String str) {
        m12040f1(new SharkCommand(20004, SharkCommandHelper.m12941j(str)));
    }

    /* renamed from: n1 */
    public void m12029n1(int i) {
        m12040f1(new SharkCommand(20004, SharkCommandHelper.m12940k(i)));
    }

    /* renamed from: o1 */
    public void m12027o1() {
        m12040f1(new SharkCommand(20024, SharkCommandHelper.m12937n()));
    }

    /* renamed from: p1 */
    public void m12025p1() {
        m12040f1(new SharkCommand(20004, SharkCommandHelper.m12938m()));
    }

    /* renamed from: q0 */
    public void m12024q0(SealSharkChannelModel sealSharkChannelModel) {
        if (sealSharkChannelModel == null || sealSharkChannelModel.getType() < 0) {
            return;
        }
        this.f13885u.remove(Integer.valueOf(sealSharkChannelModel.getNo()));
    }

    /* renamed from: q1 */
    public void m12023q1(SharkCommand sharkCommand) {
        m12040f1(sharkCommand);
    }

    /* renamed from: r1 */
    public void m12021r1(boolean z) {
        this.f13883s = z;
    }

    /* renamed from: s0 */
    public ArrayList<SealSharkChannelModel> m12020s0() {
        ArrayList<SealSharkChannelModel> arrayList = new ArrayList<>(this.f13885u.values());
        Collections.sort(arrayList, C3889q0.f13769a);
        return arrayList;
    }

    /* renamed from: t1 */
    public void m12017t1(boolean z) {
        this.f13884t = z;
    }
}
