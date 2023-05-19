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
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.p176v.ConnectionConfiguration;
import com.ifengyu.intercom.device.oldDevice.p176v.OldBleDeviceDbManager;
import com.ifengyu.intercom.device.oldDevice.p180x.C3840b;
import com.ifengyu.intercom.device.oldDevice.p180x.C3841c;
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b.SealCommand;
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b.SealCommandHelper;
import com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateDeviceService;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.MobReportUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.SealProtos;
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

/* renamed from: com.ifengyu.intercom.i.x0 */
/* loaded from: classes2.dex */
public class SealBleManager extends BaseBleManager {

    /* renamed from: w */
    public static final UUID f13861w = DeviceConstants.f13914b;

    /* renamed from: x */
    public static final UUID f13862x = DeviceConstants.f13915c;

    /* renamed from: y */
    public static final UUID f13863y = DeviceConstants.f13916d;

    /* renamed from: z */
    private static int f13864z = 1;

    /* renamed from: r */
    private final Handler f13865r;

    /* renamed from: s */
    private boolean f13866s;

    /* renamed from: t */
    private boolean f13867t;

    /* renamed from: u */
    private final HashMap<Integer, SealSharkChannelModel> f13868u;

    /* renamed from: v */
    private final Runnable f13869v;

    /* compiled from: SealBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.x0$a */
    /* loaded from: classes2.dex */
    class C3919a implements SuccessCallback {
        C3919a() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) SealBleManager.this).f13899m;
            C4971k.m8654f(str, "enableNotifications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: SealBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.x0$b */
    /* loaded from: classes2.dex */
    class C3920b implements FailCallback {
        C3920b() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) SealBleManager.this).f13899m;
            C4971k.m8657c(str, "enableNotifications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* compiled from: SealBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.x0$c */
    /* loaded from: classes2.dex */
    class C3921c implements SuccessCallback {
        C3921c() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) SealBleManager.this).f13899m;
            C4971k.m8654f(str, "enableIndications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: SealBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.x0$d */
    /* loaded from: classes2.dex */
    class C3922d implements FailCallback {
        C3922d() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) SealBleManager.this).f13899m;
            C4971k.m8657c(str, "enableIndications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.x0$e */
    /* loaded from: classes2.dex */
    public class RunnableC3923e implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f13874a;

        RunnableC3923e(String str) {
            this.f13874a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealBleManager.this.m12103j1(this.f13874a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.x0$f */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3924f {

        /* renamed from: a */
        static final /* synthetic */ int[] f13876a;

        static {
            int[] iArr = new int[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.values().length];
            f13876a = iArr;
            try {
                iArr[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13876a[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13876a[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13876a[SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public SealBleManager(@NonNull Context context) {
        super(context);
        this.f13865r = new Handler(Looper.getMainLooper());
        this.f13866s = false;
        this.f13867t = true;
        this.f13868u = new HashMap<>(20);
        this.f13869v = new Runnable() { // from class: com.ifengyu.intercom.i.f0
            @Override // java.lang.Runnable
            public final void run() {
                SealBleManager.this.m12135G0();
            }
        };
    }

    /* renamed from: A0 */
    private void m12147A0(Message message) {
        if (message instanceof SealProtos.SEAL_LocationInfo) {
            MiBus.getInstance().m6412i((SealProtos.SEAL_LocationInfo) message);
        }
    }

    /* renamed from: B0 */
    private void m12145B0(Message message) {
        if (message instanceof SealProtos.SEAL_UserActionStatistics) {
            SealProtos.SEAL_UserActionStatistics sEAL_UserActionStatistics = (SealProtos.SEAL_UserActionStatistics) message;
            HashMap hashMap = new HashMap();
            if (sEAL_UserActionStatistics.getPowerOn() > 0) {
                hashMap.put("powerOnCount", Integer.valueOf(sEAL_UserActionStatistics.getPowerOn()));
            }
            if (sEAL_UserActionStatistics.getFactoryReset() > 0) {
                hashMap.put("factoryResetCount", Integer.valueOf(sEAL_UserActionStatistics.getFactoryReset()));
            }
            if (sEAL_UserActionStatistics.getDeviceIdQuery() > 0) {
                hashMap.put("deviceIdQueryCount", Integer.valueOf(sEAL_UserActionStatistics.getDeviceIdQuery()));
            }
            if (sEAL_UserActionStatistics.getKeyLock() > 0) {
                hashMap.put("keyLockCount", Integer.valueOf(sEAL_UserActionStatistics.getKeyLock()));
            }
            if (sEAL_UserActionStatistics.getPowerLevelQuery() > 0) {
                hashMap.put("getPowerLevelQuery", Integer.valueOf(sEAL_UserActionStatistics.getPowerLevelQuery()));
            }
            if (sEAL_UserActionStatistics.getFmOpen() > 0) {
                hashMap.put("fmOpenCount", Integer.valueOf(sEAL_UserActionStatistics.getFmOpen()));
            }
            if (sEAL_UserActionStatistics.getConnBtEar() > 0) {
                hashMap.put("connBtEarCount", Integer.valueOf(sEAL_UserActionStatistics.getConnBtEar()));
            }
            if (hashMap.isEmpty()) {
                return;
            }
            MobclickAgent.onEventObject(MiTalkiApp.m14296h(), "Seal_Device_Event", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E0 */
    public static /* synthetic */ int m12139E0(SealSharkChannelModel sealSharkChannelModel, SealSharkChannelModel sealSharkChannelModel2) {
        return sealSharkChannelModel.getNo() - sealSharkChannelModel2.getNo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F0 */
    public /* synthetic */ void m12135G0() {
        m12118U0(6);
        m339l().mo418f();
    }

    /* renamed from: F1 */
    private void m12136F1(byte[] bArr, int i, int i2, int i3) {
        bArr[0] = -2;
        bArr[1] = 1;
        C3841c.m12455g(bArr, i, 2, 2);
        C3841c.m12455g(bArr, i2, 4, 2);
        C3841c.m12455g(bArr, i3, 6, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public /* synthetic */ void m12131I0(BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8654f(str, "send data success, device: " + bluetoothDevice.toString());
    }

    /* renamed from: H1 */
    private void m12132H1(String str) {
        this.f13865r.postDelayed(new RunnableC3923e(str), 1000L);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: I1 */
    private void m12130I1(String str, final int i) {
        Observable.just(str).map(new Function() { // from class: com.ifengyu.intercom.i.c0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SealBleManager.this.m12124O0(i, (String) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.i.h0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SealBleManager.this.m12122Q0((ConnectionConfiguration) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.i.d0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SealBleManager.this.m12120S0((Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public /* synthetic */ void m12128K0(BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13899m;
        C4971k.m8657c(str, "send data failed, device: " + bluetoothDevice.toString() + ", status: " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ void m12126M0() {
        C4971k.m8647m(this.f13899m, "send data failed, invalid request");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public /* synthetic */ ConnectionConfiguration m12124O0(int i, String str) throws Exception {
        BluetoothDevice m335p = m335p();
        if (m335p != null) {
            OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
            ConnectionConfiguration m12498a = m12497b.m12498a(m335p.getAddress());
            if (m12498a == null) {
                m12498a = new ConnectionConfiguration(m335p.getName(), m335p.getAddress(), str, 5, i);
            }
            m12498a.m12500g(true);
            m12497b.m12496c(m12498a);
            return m12498a;
        }
        throw new IllegalArgumentException("device is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public /* synthetic */ void m12122Q0(ConnectionConfiguration connectionConfiguration) throws Exception {
        RxBus.m11806d().m11805e(new ConnectStateEvent(ConnectStateEvent.STATE_CONNECTED));
        this.f13867t = true;
        this.f13903q = true;
        this.f13868u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R0 */
    public /* synthetic */ void m12120S0(Throwable th) throws Exception {
        C4971k.m8656d(this.f13899m, "update device param failed", th);
    }

    /* renamed from: T0 */
    private SealCommand m12119T0(byte[] bArr) {
        if (C3841c.m12459c(bArr) != bArr.length) {
            C4971k.m8657c(this.f13899m, "received pack length error");
            return null;
        } else if (!m12093p0(bArr)) {
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
                return SealCommand.m13017c(m12458d, m12461a);
            } catch (InvalidProtocolBufferException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    /* renamed from: U0 */
    private void m12118U0(int i) {
        RxBus.m11806d().m11805e(new ConnectEvent(i));
    }

    /* renamed from: W0 */
    private void m12116W0(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        SealProtos.SEAL_ChannelInfo ch = sEAL_ChannelInfoOperate.getCh();
        if (ch.getChType() != SealProtos.SEAL_ChannelInfo.SEAL_CHTYPE.SEAL_USERDEF) {
            return;
        }
        int i = C3924f.f13876a[sEAL_ChannelInfoOperate.getOption().ordinal()];
        if (i == 1 || i == 2) {
            if (sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK) {
                m12117V0(BleChannelUtils.m11815f(ch));
            }
        } else if (i != 3) {
            if (i == 4 && sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK) {
                m12091q0(BleChannelUtils.m11815f(ch));
            }
        } else if (sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_QUERY_CONTINUE) {
            m12117V0(BleChannelUtils.m11815f(ch));
        }
    }

    /* renamed from: X0 */
    private void m12115X0(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        if (sEAL_DeviceParam.hasVerHw()) {
            MiTalkClientUtil.m11246N0(sEAL_DeviceParam.getVerHw());
        }
        if (sEAL_DeviceParam.hasVerSoft()) {
            MiTalkClientUtil.m11244O0(sEAL_DeviceParam.getVerSoft());
        }
        try {
            if (sEAL_DeviceParam.hasDeviceName()) {
                MiTalkClientUtil.m11204j0(new String(sEAL_DeviceParam.getDeviceName().toByteArray(), "GB2312"));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (sEAL_DeviceParam.hasActivate()) {
            m12138E1(sEAL_DeviceParam.getActivate() == 1);
        }
        if (sEAL_DeviceParam.hasShareLoc()) {
            MiTalkClientUtil.m11258H0(sEAL_DeviceParam.getShareLoc() == SealProtos.SEAL_SWITCH.SEAL_ON);
        }
        if (sEAL_DeviceParam.hasBtAudio()) {
            MiTalkClientUtil.m11198m0(sEAL_DeviceParam.getBtAudio());
        }
        if (sEAL_DeviceParam.hasVoiceAlert()) {
            MiTalkClientUtil.m11260G0(sEAL_DeviceParam.getVoiceAlert() == SealProtos.SEAL_SWITCH.SEAL_ON);
        }
        if (sEAL_DeviceParam.hasIsAllPublic()) {
            MiTalkClientUtil.m11262F0(sEAL_DeviceParam.getIsAllPublic() == SealProtos.SEAL_SWITCH.SEAL_ON);
        }
        if (sEAL_DeviceParam.hasPwsaveMode()) {
            MiTalkClientUtil.m11250L0(sEAL_DeviceParam.getPwsaveMode());
        }
        if (sEAL_DeviceParam.hasVoiceType()) {
            MiTalkClientUtil.m11226X0(sEAL_DeviceParam.getVoiceType().getNumber());
        }
        if (sEAL_DeviceParam.hasCh()) {
            SealProtos.SEAL_ChannelInfo ch = sEAL_DeviceParam.getCh();
            if (ch.hasChSq()) {
                MiTalkClientUtil.m11248M0(ch.getChSq());
            }
            if (ch.hasChVox()) {
                MiTalkClientUtil.m11242P0(ch.getChVox());
            }
            if (ch.hasChElim()) {
                MiTalkClientUtil.m11264E0(ch.getChElim() == SealProtos.SEAL_SWITCH.SEAL_ON);
            }
            if (ch.hasChBand()) {
                MiTalkClientUtil.m11268C0(ch.getChBand());
            }
            if (ch.hasChPolite()) {
                MiTalkClientUtil.m11252K0(ch.getChPolite() == SealProtos.SEAL_SWITCH.SEAL_ON);
            }
        }
    }

    /* renamed from: Y0 */
    private byte[] m12114Y0(SealCommand sealCommand) {
        byte[] byteArray = sealCommand.m12507b().toByteArray();
        int m12508a = sealCommand.m12508a();
        int length = byteArray.length;
        int i = length + 8;
        int i2 = i + 2;
        byte[] bArr = new byte[i];
        m12136F1(bArr, i2, m12508a, f13864z);
        System.arraycopy(byteArray, 0, bArr, 8, length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        System.arraycopy(m12089r0(bArr), 0, bArr2, i, 2);
        f13864z = (f13864z + 1) % 65535;
        return bArr2;
    }

    /* renamed from: i1 */
    private void m12104i1(SealCommand sealCommand) {
        m12113Z0(m12114Y0(sealCommand));
    }

    /* renamed from: p0 */
    private boolean m12093p0(byte[] bArr) {
        return ByteUtils.m14366c(PacketUtil.m14341a(bArr, bArr.length - 2, 2), C3840b.m12462a(PacketUtil.m14341a(bArr, 0, bArr.length - 2)));
    }

    /* renamed from: r0 */
    private byte[] m12089r0(byte[] bArr) {
        return C3840b.m12462a(bArr);
    }

    /* renamed from: t0 */
    private void m12085t0(@NonNull BluetoothDevice bluetoothDevice, Message message) {
        if (message instanceof SealProtos.SEAL_Connect) {
            this.f13865r.removeCallbacks(this.f13869v);
            SealProtos.SEAL_Connect sEAL_Connect = (SealProtos.SEAL_Connect) message;
            SealProtos.SEAL_CONNCODE connCode = sEAL_Connect.getConnCode();
            SealProtos.SEAL_Connect.SEAL_LANGUAGETYPE language = sEAL_Connect.getLanguage();
            if (connCode == SealProtos.SEAL_CONNCODE.SEAL_ALLOW) {
                C4971k.m8659a(this.f13899m, "Allow to connect");
                int deviceId = sEAL_Connect.getDeviceId();
                MiTalkClientUtil.m11223a();
                MiTalkClientUtil.m11272A0(5);
                MiTalkClientUtil.m11206i0(bluetoothDevice.getAddress());
                MiTalkClientUtil.m11266D0(String.valueOf(deviceId));
                MiTalkClientUtil.m11256I0(language.getNumber() == 0 ? "mcu_language_type_chinese" : "mcu_language_type_english");
                m12118U0(1);
                MobReportUtils.m11810a(5);
                m12130I1(String.valueOf(deviceId), sEAL_Connect.hasColor() ? sEAL_Connect.getColor() : 0);
            } else if (connCode == SealProtos.SEAL_CONNCODE.SEAL_WAIT) {
                C4971k.m8659a(this.f13899m, "waiting confirm connection");
                m12118U0(3);
                this.f13865r.postDelayed(this.f13869v, 20000L);
            } else if (connCode == SealProtos.SEAL_CONNCODE.SEAL_LOWPOWER) {
                C4971k.m8647m(this.f13899m, "connect failed, device low power");
                m12118U0(4);
                m339l().mo418f();
            } else if (connCode == SealProtos.SEAL_CONNCODE.SEAL_REFUSE) {
                C4971k.m8647m(this.f13899m, "connect failed, device refused");
                m12118U0(2);
                m339l().mo418f();
            } else {
                C4971k.m8647m(this.f13899m, "connect failed, other reason");
                m12118U0(7);
                m339l().mo418f();
            }
        }
    }

    /* renamed from: u0 */
    private void m12083u0(@NonNull BluetoothDevice bluetoothDevice, @NonNull SealCommand sealCommand) {
        Message m12507b = sealCommand.m12507b();
        int m12508a = sealCommand.m12508a();
        if (m12508a == 20002) {
            m12085t0(bluetoothDevice, m12507b);
        } else if (m12508a == 20005) {
            m12073z0(m12507b);
        } else if (m12508a == 20008) {
            m12075y0(m12507b);
        } else if (m12508a == 20011) {
            m12077x0(m12507b);
        } else if (m12508a == 20014) {
            SealSharkUpdateDeviceService.m12530a().m12529b(sealCommand);
        } else if (m12508a == 20016) {
            m12147A0(m12507b);
        } else if (m12508a == 20019) {
            m12081v0(m12507b);
        } else if (m12508a == 20021) {
            m12079w0(m12507b);
        } else if (m12508a != 20025) {
        } else {
            m12145B0(m12507b);
        }
    }

    /* renamed from: v0 */
    private void m12081v0(Message message) {
        if (message instanceof SealProtos.SEAL_BtEarConnectState) {
            MiBus.getInstance().m6412i((SealProtos.SEAL_BtEarConnectState) message);
        }
    }

    /* renamed from: w0 */
    private void m12079w0(Message message) {
        if (message instanceof SealProtos.SEAL_BtEarScanControl) {
            MiBus.getInstance().m6412i((SealProtos.SEAL_BtEarScanControl) message);
        }
    }

    /* renamed from: x0 */
    private void m12077x0(Message message) {
        if (message instanceof SealProtos.SEAL_ChannelInfoOperate) {
            SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate = (SealProtos.SEAL_ChannelInfoOperate) message;
            MiBus.getInstance().m6412i(sEAL_ChannelInfoOperate);
            if (sEAL_ChannelInfoOperate.hasCh() && sEAL_ChannelInfoOperate.hasOption()) {
                m12116W0(sEAL_ChannelInfoOperate);
            }
        }
    }

    /* renamed from: y0 */
    private void m12075y0(Message message) {
        if (message instanceof SealProtos.SEAL_ChannelStateOperate) {
            MiBus.getInstance().m6412i((SealProtos.SEAL_ChannelStateOperate) message);
        }
    }

    /* renamed from: z0 */
    private void m12073z0(Message message) {
        if (message instanceof SealProtos.SEAL_DeviceParam) {
            SealProtos.SEAL_DeviceParam sEAL_DeviceParam = (SealProtos.SEAL_DeviceParam) message;
            if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK || sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                m12115X0(sEAL_DeviceParam);
                if (sEAL_DeviceParam.hasShareLoc()) {
                    if (sEAL_DeviceParam.getShareLoc() == SealProtos.SEAL_SWITCH.SEAL_ON && ShareLocationService.m10698e() == null) {
                        MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                    } else if (sEAL_DeviceParam.getShareLoc() == SealProtos.SEAL_SWITCH.SEAL_OFF && ShareLocationService.m10698e() != null) {
                        MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
                    }
                }
            }
            MiBus.getInstance().m6412i(sEAL_DeviceParam);
        }
    }

    /* renamed from: A1 */
    public void m12146A1() {
        m12104i1(new SealCommand(20024, SealCommandHelper.m12999m()));
    }

    /* renamed from: B1 */
    public void m12144B1(boolean z) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12992t(z)));
    }

    /* renamed from: C0 */
    public boolean m12143C0() {
        return this.f13866s;
    }

    /* renamed from: C1 */
    public void m12142C1(SealCommand sealCommand) {
        m12104i1(sealCommand);
    }

    /* renamed from: D0 */
    public boolean m12141D0() {
        return this.f13867t;
    }

    /* renamed from: D1 */
    public void m12140D1(int i) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12988x(i)));
    }

    /* renamed from: E1 */
    public void m12138E1(boolean z) {
        this.f13866s = z;
    }

    /* renamed from: G1 */
    public void m12134G1(boolean z) {
        this.f13867t = z;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: P */
    protected void mo12004P(RequestQueue requestQueue) {
        int properties = this.f13901o.getProperties();
        if ((properties & 16) > 0) {
            WriteRequest m336o = m336o(this.f13901o);
            m336o.m383K(new C3920b());
            m336o.m384J(new C3919a());
            requestQueue.m434H(m336o);
        }
        if ((properties & 32) > 0) {
            WriteRequest m337n = m337n(this.f13901o);
            m337n.m383K(new C3922d());
            m337n.m384J(new C3921c());
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
        return f13863y;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: V */
    protected UUID mo11998V() {
        return f13861w;
    }

    /* renamed from: V0 */
    public void m12117V0(SealSharkChannelModel sealSharkChannelModel) {
        if (sealSharkChannelModel == null || sealSharkChannelModel.getType() < 0) {
            return;
        }
        this.f13868u.put(Integer.valueOf(sealSharkChannelModel.getNo()), sealSharkChannelModel);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: W */
    protected int mo11997W() {
        return CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384;
    }

    /* renamed from: Z0 */
    protected void m12113Z0(byte[] bArr) {
        BluetoothGattCharacteristic bluetoothGattCharacteristic = this.f13900n;
        if (bluetoothGattCharacteristic == null) {
            C4971k.m8657c(this.f13899m, "send data failed, device may be disconnected");
            return;
        }
        WriteRequest m346J = m346J(bluetoothGattCharacteristic, bArr);
        m346J.m372V();
        m346J.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.i.e0
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                SealBleManager.this.m12131I0(bluetoothDevice);
            }
        });
        m346J.m383K(new FailCallback() { // from class: com.ifengyu.intercom.i.i0
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                SealBleManager.this.m12128K0(bluetoothDevice, i);
            }
        });
        m346J.m379O(new InvalidRequestCallback() { // from class: com.ifengyu.intercom.i.j0
            @Override // no.nordicsemi.android.ble.p307v2.InvalidRequestCallback
            /* renamed from: a */
            public final void mo362a() {
                SealBleManager.this.m12126M0();
            }
        });
        m346J.mo418f();
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: a */
    public void mo305a(@NonNull BluetoothDevice bluetoothDevice) {
        super.mo305a(bluetoothDevice);
        DeviceModel mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(bluetoothDevice.getAddress());
        if (mo14239f != null) {
            m12132H1(mo14239f.getDeviceId());
        } else {
            m12132H1(null);
        }
    }

    /* renamed from: a1 */
    public void m12112a1(SealSharkChannelModel sealSharkChannelModel) {
        m12104i1(new SealCommand(20010, SealCommandHelper.m13010b(sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_DELETE)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: b0 */
    protected UUID mo11992b0() {
        return f13862x;
    }

    /* renamed from: b1 */
    public void m12111b1(SealSharkChannelModel sealSharkChannelModel) {
        m12104i1(new SealCommand(20010, SealCommandHelper.m13010b(sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_INSERT)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: c0 */
    protected void mo11991c0(BluetoothDevice bluetoothDevice, byte[] bArr) {
        SealCommand m12119T0 = m12119T0(bArr);
        if (m12119T0 == null) {
            return;
        }
        m12083u0(bluetoothDevice, m12119T0);
    }

    /* renamed from: c1 */
    public void m12110c1(SealSharkChannelModel sealSharkChannelModel) {
        m12104i1(new SealCommand(20010, SealCommandHelper.m13010b(sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_MODIFY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: d */
    public void mo302d(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo302d(bluetoothDevice, i);
        this.f13865r.removeCallbacks(this.f13869v);
        m11983k0(bluetoothDevice);
        MiTalkiApp.m14296h().stopService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
    }

    /* renamed from: d1 */
    public void m12109d1(SealSharkChannelModel sealSharkChannelModel) {
        m12104i1(new SealCommand(20009, SealCommandHelper.m13010b(sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY)));
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: e */
    public void mo301e(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo301e(bluetoothDevice, i);
        m12118U0(7);
    }

    /* renamed from: e1 */
    public void m12108e1() {
        m12104i1(new SealCommand(20009, SealCommandHelper.m13009c(SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY)));
    }

    /* renamed from: f1 */
    public void m12107f1(SealSharkChannelModel sealSharkChannelModel) {
        m12104i1(new SealCommand(20009, SealCommandHelper.m13008d(sealSharkChannelModel, SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY)));
    }

    /* renamed from: g1 */
    public void m12106g1() {
        m12104i1(new SealCommand(20006, SealCommandHelper.m13007e(null, SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_QUERY)));
    }

    /* renamed from: h1 */
    public void m12105h1(SealSharkChannelModel sealSharkChannelModel) {
        m12104i1(new SealCommand(20007, SealCommandHelper.m13007e(sealSharkChannelModel, SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE)));
    }

    /* renamed from: j1 */
    public void m12103j1(String str) {
        String str2 = this.f13899m;
        C4971k.m8654f(str2, "startConnectRequest deviceId: " + str);
        m12104i1(new SealCommand(20001, SealCommandHelper.m13006f(str)));
    }

    /* renamed from: k1 */
    public void m12102k1() {
        m12104i1(new SealCommand(20004, SealCommandHelper.m13011a()));
    }

    /* renamed from: l1 */
    public void m12100l1(int i) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12997o(i)));
    }

    /* renamed from: m1 */
    public void m12098m1(BtEarBean btEarBean) {
        m12104i1(new SealCommand(20018, SealCommandHelper.m13003i(btEarBean)));
    }

    /* renamed from: n1 */
    public void m12096n1() {
        m12104i1(new SealCommand(20017, SealCommandHelper.m12998n()));
    }

    /* renamed from: o1 */
    public void m12094o1() {
        m12104i1(new SealCommand(20018, SealCommandHelper.m13002j()));
    }

    /* renamed from: p1 */
    public void m12092p1() {
        m12104i1(new SealCommand(20020, SealCommandHelper.m13001k()));
    }

    /* renamed from: q0 */
    public void m12091q0(SealSharkChannelModel sealSharkChannelModel) {
        if (sealSharkChannelModel == null || sealSharkChannelModel.getType() < 0) {
            return;
        }
        this.f13868u.remove(Integer.valueOf(sealSharkChannelModel.getNo()));
    }

    /* renamed from: q1 */
    public void m12090q1() {
        m12104i1(new SealCommand(20020, SealCommandHelper.m13000l()));
    }

    /* renamed from: r1 */
    public void m12088r1() {
        m12104i1(new SealCommand(20003, SealCommandHelper.m13005g()));
    }

    /* renamed from: s0 */
    public ArrayList<SealSharkChannelModel> m12087s0() {
        ArrayList<SealSharkChannelModel> arrayList = new ArrayList<>(this.f13868u.values());
        Collections.sort(arrayList, C3869g0.f13745a);
        return arrayList;
    }

    /* renamed from: s1 */
    public void m12086s1(boolean z) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12995q(z)));
    }

    /* renamed from: t1 */
    public void m12084t1(BeanUserLocation beanUserLocation) {
        m12104i1(new SealCommand(20016, SealCommandHelper.m13004h(beanUserLocation)));
    }

    /* renamed from: u1 */
    public void m12082u1(int i) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12993s(i)));
    }

    /* renamed from: v1 */
    public void m12080v1(String str) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12994r(str)));
    }

    /* renamed from: w1 */
    public void m12078w1(int i) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12996p(i)));
    }

    /* renamed from: x1 */
    public void m12076x1(int i) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12991u(i)));
    }

    /* renamed from: y1 */
    public void m12074y1(boolean z) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12990v(z)));
    }

    /* renamed from: z1 */
    public void m12072z1(boolean z) {
        m12104i1(new SealCommand(20004, SealCommandHelper.m12989w(z)));
    }
}
