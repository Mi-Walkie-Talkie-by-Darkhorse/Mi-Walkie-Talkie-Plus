package com.ifengyu.intercom.p185i;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.ifengyu.blelib.p151b.DeviceDataCallback;
import com.ifengyu.blelib.p151b.ListenerQueue;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p152c.CRC16;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.blelib.p152c.CommendParser;
import com.ifengyu.blelib.p152c.Packet;
import com.ifengyu.blelib.p152c.PacketUtil;
import com.ifengyu.blelib.p153d.CustomDataMerge;
import com.ifengyu.blelib.utils.DH;
import com.ifengyu.blelib.utils.EncryptUtils;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.device.lite.p156c.p157a.CmdHelper;
import com.ifengyu.intercom.device.lite.p156c.p158b.LiteCommendParser;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p191a.CustomChannelCache;
import com.ifengyu.intercom.p189l.p190a.p197d.MobReportUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.C4971k;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import no.nordicsemi.android.ble.RequestQueue;
import no.nordicsemi.android.ble.WriteRequest;
import no.nordicsemi.android.ble.data.DataMerger;
import no.nordicsemi.android.ble.p307v2.BeforeCallback;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import no.nordicsemi.android.ble.p307v2.InvalidRequestCallback;
import no.nordicsemi.android.ble.p307v2.SuccessCallback;

/* renamed from: com.ifengyu.intercom.i.v0 */
/* loaded from: classes2.dex */
public class LiteBleManager extends BaseBleManager {

    /* renamed from: F */
    public static final UUID f13810F = DeviceConstants.f13914b;

    /* renamed from: G */
    public static final UUID f13811G = DeviceConstants.f13915c;

    /* renamed from: H */
    public static final UUID f13812H = DeviceConstants.f13916d;

    /* renamed from: I */
    public static final UUID f13813I = UUID.fromString("00010203-0405-0607-0809-0a0b0c0d1912");

    /* renamed from: J */
    public static final UUID f13814J = UUID.fromString("00010203-0405-0607-0809-0a0b0c0d2b12");

    /* renamed from: A */
    private byte[] f13815A;

    /* renamed from: B */
    private byte[] f13816B;

    /* renamed from: C */
    private byte[] f13817C;

    /* renamed from: D */
    private long f13818D;

    /* renamed from: E */
    private final Runnable f13819E;

    /* renamed from: r */
    private final Handler f13820r;

    /* renamed from: s */
    protected final List<DeviceDataCallback> f13821s;

    /* renamed from: t */
    private final CommendParser f13822t;

    /* renamed from: u */
    private boolean f13823u;

    /* renamed from: v */
    private boolean f13824v;

    /* renamed from: w */
    private boolean f13825w;

    /* renamed from: x */
    private final List<Integer> f13826x;

    /* renamed from: y */
    private final List<Integer> f13827y;

    /* renamed from: z */
    private DH f13828z;

    /* compiled from: LiteBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.v0$a */
    /* loaded from: classes2.dex */
    class C3907a implements SuccessCallback {
        C3907a() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
        /* renamed from: a */
        public void mo357a(@NonNull BluetoothDevice bluetoothDevice) {
            String str = ((BaseBleManager) LiteBleManager.this).f13899m;
            C4971k.m8654f(str, "enableNotifications onRequestCompleted-->device: " + bluetoothDevice.toString());
        }
    }

    /* compiled from: LiteBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.v0$b */
    /* loaded from: classes2.dex */
    class C3908b implements FailCallback {
        C3908b() {
        }

        @Override // no.nordicsemi.android.ble.p307v2.FailCallback
        /* renamed from: a */
        public void mo363a(@NonNull BluetoothDevice bluetoothDevice, int i) {
            String str = ((BaseBleManager) LiteBleManager.this).f13899m;
            C4971k.m8657c(str, "enableNotifications onRequestFailed-->device: " + bluetoothDevice.toString() + ", status: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.v0$c */
    /* loaded from: classes2.dex */
    public class RunnableC3909c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f13831a;

        /* renamed from: b */
        final /* synthetic */ byte[] f13832b;

        /* compiled from: LiteBleManager.java */
        /* renamed from: com.ifengyu.intercom.i.v0$c$a */
        /* loaded from: classes2.dex */
        class C3910a extends PacketListener {
            C3910a() {
            }

            @Override // com.ifengyu.blelib.p151b.PacketListener
            /* renamed from: c */
            public void mo11457c(int i) {
                String str = ((BaseBleManager) LiteBleManager.this).f13899m;
                C4971k.m8657c(str, "connect commend write failed, status: " + i);
                LiteBleManager.this.m12260c1(i == -5 ? 6 : 7);
                LiteBleManager.this.m339l().mo418f();
            }

            @Override // com.ifengyu.blelib.p151b.PacketListener
            /* renamed from: d */
            public void mo11456d(Commend commend) {
            }
        }

        RunnableC3909c(String str, byte[] bArr) {
            this.f13831a = str;
            this.f13832b = bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            LiteBleManager.this.m12232u1(this.f13831a, this.f13832b, new C3910a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.v0$d */
    /* loaded from: classes2.dex */
    public class C3911d extends PacketListener {
        C3911d() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = ((BaseBleManager) LiteBleManager.this).f13899m;
            C4971k.m8647m(str, "query device param failed, status: " + i);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            C4971k.m8659a(((BaseBleManager) LiteBleManager.this).f13899m, "query device param success");
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                LiteBleManager.this.m12281H1(devResponse.getDevInfo(), null);
                MiTalkClientUtil.m11204j0(devResponse.getDevInfo().getName().toStringUtf8());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.v0$e */
    /* loaded from: classes2.dex */
    public class C3912e extends PacketListener {
        C3912e() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = ((BaseBleManager) LiteBleManager.this).f13899m;
            C4971k.m8657c(str, "login commend write failed, status: " + i);
            LiteBleManager.this.m12260c1(i == -5 ? 6 : 7);
            LiteBleManager.this.m339l().mo418f();
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteBleManager.java */
    /* renamed from: com.ifengyu.intercom.i.v0$f */
    /* loaded from: classes2.dex */
    public class C3913f extends PacketListener {
        C3913f() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = ((BaseBleManager) LiteBleManager.this).f13899m;
            C4971k.m8647m(str, "query device param failed, status: " + i);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            C4971k.m8659a(((BaseBleManager) LiteBleManager.this).f13899m, "query device param success");
            LiteProtos.DevResponse devResponse = (LiteProtos.DevResponse) commend.m14356b();
            if (devResponse.getResult() == LiteProtos.RESULT.SUCCESS) {
                LiteBleManager.this.m12281H1(devResponse.getDevInfo(), LiteBleManager.this.m12292C0());
                MiTalkClientUtil.m11204j0(devResponse.getDevInfo().getName().toStringUtf8());
            }
        }
    }

    public LiteBleManager(@NonNull Context context) {
        super(context);
        this.f13820r = new Handler(Looper.getMainLooper());
        this.f13821s = new ArrayList();
        this.f13822t = new LiteCommendParser();
        this.f13825w = false;
        this.f13826x = new ArrayList(Arrays.asList(20001, 20002));
        this.f13827y = new ArrayList(Arrays.asList(20023, 20024));
        this.f13819E = new Runnable() { // from class: com.ifengyu.intercom.i.p
            @Override // java.lang.Runnable
            public final void run() {
                LiteBleManager.this.m12276M0();
            }
        };
    }

    /* renamed from: E0 */
    private void m12288E0(Commend commend) {
        this.f13820r.removeCallbacks(this.f13819E);
        LiteProtos.ConnectResponse connectResponse = (LiteProtos.ConnectResponse) commend.m14356b();
        if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.ALLOW) {
            if (this.f13824v) {
                C4971k.m8647m(this.f13899m, "Connection is allowed, no need to call repeatedly");
                return;
            }
            this.f13824v = true;
            MiTalkClientUtil.m11272A0(9);
            MiTalkClientUtil.m11206i0(m335p().getAddress());
            MiTalkClientUtil.m11176x0(true);
            m12257f1(new C3911d());
            C4971k.m8659a(this.f13899m, "Allow to connect");
            m12260c1(1);
            MobReportUtils.m11810a(9);
        } else if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.WAIT) {
            C4971k.m8659a(this.f13899m, "waiting confirm connection");
            m12260c1(3);
            this.f13820r.postDelayed(this.f13819E, 20000L);
        } else if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.LOWPOWER) {
            C4971k.m8647m(this.f13899m, "connect failed, device low power");
            m12260c1(4);
            m339l().mo418f();
        } else if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.REFUSE) {
            C4971k.m8647m(this.f13899m, "connect failed, device refused");
            m12260c1(2);
            m339l().mo418f();
        } else {
            C4971k.m8647m(this.f13899m, "connect failed, other reason");
            m12260c1(7);
            m339l().mo418f();
        }
    }

    /* renamed from: F0 */
    private void m12286F0(Commend commend) {
        this.f13820r.removeCallbacks(this.f13819E);
        LiteProtos.LoginResponse loginResponse = (LiteProtos.LoginResponse) commend.m14356b();
        if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.ALLOW) {
            if (this.f13824v) {
                C4971k.m8647m(this.f13899m, "Connection is allowed, no need to call repeatedly");
                return;
            }
            this.f13824v = true;
            MiTalkClientUtil.m11272A0(9);
            MiTalkClientUtil.m11206i0(m335p().getAddress());
            MiTalkClientUtil.m11176x0(true);
            m12236s1(loginResponse.getKey().toByteArray());
            m12238r1(loginResponse.getIv().toByteArray());
            m12234t1(loginResponse.getToken().toByteArray());
            if (C4971k.m8653g()) {
                String str = this.f13899m;
                C4971k.m8659a(str, "received key: " + ByteUtils.m14367b(m12294B0()) + ", iv: " + ByteUtils.m14367b(m12296A0()) + ", token: " + ByteUtils.m14367b(m12292C0()));
            }
            m347I(1000L).mo418f();
            m12257f1(new C3913f());
            C4971k.m8659a(this.f13899m, "Allow to connect");
            m12260c1(1);
            MobReportUtils.m11810a(9);
        } else if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.WAIT) {
            C4971k.m8659a(this.f13899m, "waiting confirm connection");
            m12260c1(3);
            this.f13820r.postDelayed(this.f13819E, 20000L);
        } else if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.LOWPOWER) {
            C4971k.m8647m(this.f13899m, "connect failed, device low power");
            m12260c1(4);
            m339l().mo418f();
        } else if (loginResponse.getConnectCode() == LiteProtos.CONNECT_CODE.REFUSE) {
            C4971k.m8647m(this.f13899m, "connect failed, device refused");
            m12260c1(2);
            m339l().mo418f();
        } else {
            C4971k.m8647m(this.f13899m, "connect failed, other reason");
            m12260c1(7);
            m339l().mo418f();
        }
    }

    /* renamed from: G0 */
    private void m12284G0(@NonNull BluetoothDevice bluetoothDevice, @NonNull Commend commend) {
        if (commend.m14357a() == 20002) {
            LiteProtos.ConnectResponse connectResponse = (LiteProtos.ConnectResponse) commend.m14356b();
            if (connectResponse.getConnectCode() != LiteProtos.CONNECT_CODE.WAIT) {
                if (m12280I0()) {
                    if (connectResponse.getConnectCode() == LiteProtos.CONNECT_CODE.ALLOW) {
                        m12248m1(connectResponse);
                    } else {
                        m12288E0(commend);
                    }
                } else {
                    m12288E0(commend);
                }
            }
        } else if (commend.m14357a() == 20024) {
            m12286F0(commend);
        } else if (commend.m14357a() == 20022) {
            m12244o1(((LiteProtos.BatchBrodFskResponse) commend.m14356b()).getResult() == LiteProtos.SWITCH.ON);
        }
        for (DeviceDataCallback deviceDataCallback : this.f13821s) {
            deviceDataCallback.mo11499a(bluetoothDevice, commend);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    /* renamed from: H1 */
    public void m12281H1(final LiteProtos.DevInfo devInfo, final byte[] bArr) {
        Observable.just(devInfo).map(new Function() { // from class: com.ifengyu.intercom.i.s
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return LiteBleManager.this.m12266W0(devInfo, bArr, (LiteProtos.DevInfo) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(C3890r.f13770a, new Consumer() { // from class: com.ifengyu.intercom.i.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteBleManager.this.m12263Z0((Throwable) obj);
            }
        });
    }

    /* renamed from: J0 */
    private boolean m12279J0(int i) {
        List<Integer> list = this.f13826x;
        if (list == null) {
            return false;
        }
        return list.contains(Integer.valueOf(i));
    }

    /* renamed from: K0 */
    private boolean m12278K0(int i) {
        List<Integer> list = this.f13827y;
        if (list == null) {
            return false;
        }
        return list.contains(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ void m12276M0() {
        m12260c1(6);
        m339l().mo418f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public /* synthetic */ void m12274O0(int i, PacketListener packetListener, BluetoothDevice bluetoothDevice) {
        m12229w0(i, packetListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public /* synthetic */ void m12272Q0(BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8654f(str, "send data success, device: " + bluetoothDevice.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R0 */
    public /* synthetic */ void m12270S0(int i, BluetoothDevice bluetoothDevice, int i2) {
        String str = this.f13899m;
        C4971k.m8657c(str, "send data failed, device: " + bluetoothDevice.toString() + ", status: " + i2);
        PacketListener m14375g = ListenerQueue.m14378d().m14375g(i);
        if (m14375g != null) {
            m14375g.mo11457c(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T0 */
    public /* synthetic */ void m12268U0(int i) {
        C4971k.m8647m(this.f13899m, "send data failed, invalid request");
        PacketListener m14375g = ListenerQueue.m14378d().m14375g(i);
        if (m14375g != null) {
            m14375g.mo11457c(-4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V0 */
    public /* synthetic */ DeviceModel m12266W0(LiteProtos.DevInfo devInfo, byte[] bArr, LiteProtos.DevInfo devInfo2) throws Exception {
        BluetoothDevice m335p = m335p();
        if (m335p != null) {
            DeviceDao mo14270E = AppDatabase.m14276F().mo14270E();
            DeviceModel mo14239f = mo14270E.mo14239f(m335p.getAddress());
            if (mo14239f == null) {
                mo14239f = new DeviceModel();
            }
            mo14239f.setAddress(m335p.getAddress());
            mo14239f.setName(devInfo.getName().toStringUtf8());
            mo14239f.setDeviceType(9);
            mo14239f.setConnected(true);
            mo14239f.setDeviceId(String.valueOf(devInfo2.getDeviceId()));
            mo14239f.setVersionHw(devInfo2.getVerHw());
            mo14239f.setVersionSoft(devInfo2.getVerSoft());
            mo14239f.setVersionVoice(devInfo2.getVerVoice());
            mo14239f.setDeviceColor(devInfo2.getDeviceColor());
            mo14239f.setToken(ByteUtils.m14367b(bArr));
            if (mo14239f.getId() != null) {
                if (mo14239f.getCreateTime() == 0) {
                    mo14239f.setCreateTime(System.currentTimeMillis());
                }
                mo14239f.setUpdateTime(System.currentTimeMillis());
                mo14270E.mo14237h(mo14239f);
            } else {
                mo14239f.setCreateTime(System.currentTimeMillis());
                mo14239f.setUpdateTime(System.currentTimeMillis());
                mo14270E.mo14235j(mo14239f);
            }
            return mo14239f;
        }
        throw new IllegalArgumentException("device is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y0 */
    public /* synthetic */ void m12263Z0(Throwable th) throws Exception {
        C4971k.m8656d(this.f13899m, "update device param failed", th);
    }

    /* renamed from: b1 */
    private Commend m12261b1(byte[] bArr) {
        if (!m12227x0(bArr)) {
            C4971k.m8657c(this.f13899m, "parse received pack-->invalid crc");
            return null;
        }
        int m14340b = PacketUtil.m14340b(bArr);
        int m14334h = PacketUtil.m14334h(bArr);
        int m14335g = PacketUtil.m14335g(bArr);
        byte[] m14338d = PacketUtil.m14338d(bArr);
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "parse received pack-->cmdId: " + m14340b + ", version: " + m14334h + ", seq: " + m14335g + ", data: " + ByteUtils.m14367b(m14338d));
        }
        if (m12280I0()) {
            if (m12279J0(m14340b)) {
                m14338d = m12225y0(m14338d);
            } else if (m12278K0(m14340b)) {
                m14338d = m12225y0(EncryptUtils.m14315b(m14338d, this.f13828z.m14319d(), this.f13828z.m14320c()));
            } else {
                m14338d = m12225y0(EncryptUtils.m14315b(m14338d, m12294B0(), m12296A0()));
            }
            if (C4971k.m8653g()) {
                String str2 = this.f13899m;
                C4971k.m8659a(str2, "parse received pack-->decrypt data: " + ByteUtils.m14367b(m14338d));
            }
        }
        if (m14338d == null) {
            C4971k.m8659a(this.f13899m, "parse receive pack-->data is null");
            return null;
        }
        return this.f13822t.mo11555a(m14340b, m14338d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c1 */
    public void m12260c1(int i) {
        RxBus.m11806d().m11805e(new ConnectEvent(i));
    }

    /* renamed from: h1 */
    private void m12255h1(Commend commend, PacketListener packetListener) {
        m12252k1(m12262a1(commend), packetListener);
    }

    /* renamed from: l1 */
    private void m12250l1(String str, byte[] bArr) {
        this.f13820r.postDelayed(new RunnableC3909c(str, bArr), 1000L);
    }

    /* renamed from: m1 */
    private void m12248m1(LiteProtos.ConnectResponse connectResponse) {
        byte[] byteArray = connectResponse.getPublicKey().toByteArray();
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "received public key: " + ByteUtils.m14367b(byteArray));
        }
        m12223z0().m14321b(byteArray);
        if (C4971k.m8653g()) {
            String str2 = this.f13899m;
            C4971k.m8659a(str2, "generate secret key: " + ByteUtils.m14367b(m12223z0().m14317f()));
        }
        m12230v1(m12292C0(), new C3912e());
    }

    /* renamed from: v0 */
    private byte[] m12231v0(byte[] bArr, int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis == this.f13818D) {
            currentTimeMillis++;
        }
        this.f13818D = currentTimeMillis;
        byte[] array = ByteBuffer.allocate(8).putLong(currentTimeMillis).array();
        int length = array.length + i;
        byte[] bArr2 = new byte[length + 2];
        PacketUtil.m14333i(bArr2, length, 0, 2);
        System.arraycopy(bArr, 0, bArr2, 2, i);
        System.arraycopy(array, 0, bArr2, i + 2, array.length);
        return bArr2;
    }

    /* renamed from: w0 */
    private void m12229w0(int i, PacketListener packetListener) {
        if (packetListener != null) {
            ListenerQueue.m14378d().m14374h(i, packetListener);
        }
    }

    /* renamed from: x0 */
    private boolean m12227x0(byte[] bArr) {
        return ByteUtils.m14366c(PacketUtil.m14339c(bArr), CRC16.m14359b(PacketUtil.m14341a(bArr, 0, bArr.length - 2)));
    }

    /* renamed from: y0 */
    private byte[] m12225y0(byte[] bArr) {
        if (bArr.length < 2) {
            String str = this.f13899m;
            C4971k.m8657c(str, "unpack, real data length < 2, data: " + ByteUtils.m14367b(bArr));
            return null;
        }
        int m14337e = PacketUtil.m14337e(bArr);
        if (bArr.length < m14337e + 2) {
            String str2 = this.f13899m;
            C4971k.m8657c(str2, "unpack, real data length < dataLen + 2, data: " + ByteUtils.m14367b(bArr));
            return null;
        }
        return PacketUtil.m14341a(bArr, 2, m14337e);
    }

    /* renamed from: A0 */
    protected byte[] m12296A0() {
        return this.f13816B;
    }

    /* renamed from: A1 */
    public void m12295A1(boolean z, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14174j(z)), packetListener);
    }

    /* renamed from: B0 */
    protected byte[] m12294B0() {
        return this.f13815A;
    }

    /* renamed from: B1 */
    public void m12293B1(boolean z, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14171m(z)), packetListener);
    }

    /* renamed from: C0 */
    protected byte[] m12292C0() {
        return this.f13817C;
    }

    /* renamed from: C1 */
    public void m12291C1(LiteProtos.LANGUAGE_TYPE language_type, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14170n(language_type)), packetListener);
    }

    /* renamed from: D0 */
    public WriteRequest m12290D0(byte[] bArr) {
        return m11993a0(m11996X(), bArr);
    }

    /* renamed from: D1 */
    public void m12289D1(String str, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14169o(str)), packetListener);
    }

    /* renamed from: E1 */
    public void m12287E1(boolean z, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14168p(z)), packetListener);
    }

    /* renamed from: F1 */
    public void m12285F1(int i, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14167q(i)), packetListener);
    }

    /* renamed from: G1 */
    public void m12283G1(boolean z, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14166r(z)), packetListener);
    }

    /* renamed from: H0 */
    public boolean m12282H0() {
        return this.f13823u;
    }

    /* renamed from: I0 */
    protected boolean m12280I0() {
        return this.f13825w;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: P */
    protected void mo12004P(RequestQueue requestQueue) {
        WriteRequest m336o = m336o(this.f13901o);
        m336o.m383K(new C3908b());
        m336o.m384J(new C3907a());
        requestQueue.m434H(m336o);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: S */
    protected DataMerger mo12001S() {
        return new CustomDataMerge();
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: U */
    protected UUID mo11999U() {
        return f13812H;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: V */
    protected UUID mo11998V() {
        return f13810F;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: W */
    protected int mo11997W() {
        return 500;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: Y */
    protected UUID mo11995Y() {
        return f13813I;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: Z */
    protected UUID mo11994Z() {
        return f13814J;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: a */
    public void mo305a(@NonNull BluetoothDevice bluetoothDevice) {
        super.mo305a(bluetoothDevice);
        ListenerQueue.m14378d().m14376f();
        this.f13824v = false;
        DH dh = new DH();
        dh.m14322a();
        m12242p1(dh);
        DeviceModel mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(bluetoothDevice.getAddress());
        if (mo14239f != null) {
            m12234t1(ByteUtils.m14362g(mo14239f.getToken()));
            m12250l1(mo14239f.getDeviceId(), dh.m14318e());
            return;
        }
        m12250l1(null, dh.m14318e());
    }

    /* renamed from: a1 */
    protected byte[] m12262a1(Commend commend) {
        int m14357a = commend.m14357a();
        int serializedSize = commend.m14356b().getSerializedSize();
        byte[] byteArray = commend.m14356b().toByteArray();
        if (m12280I0() && !m12279J0(m14357a)) {
            byteArray = m12278K0(m14357a) ? EncryptUtils.m14314c(m12231v0(byteArray, serializedSize), this.f13828z.m14319d(), this.f13828z.m14320c()) : EncryptUtils.m14314c(m12231v0(byteArray, serializedSize), m12294B0(), m12296A0());
        }
        Packet packet = new Packet(m14357a, byteArray);
        byte[] m14347e = packet.m14347e();
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "send commend-->cmdId: " + m14357a + ", packet: " + packet.toString());
        }
        return m14347e;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: b0 */
    protected UUID mo11992b0() {
        return f13811G;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: c0 */
    protected void mo11991c0(BluetoothDevice bluetoothDevice, byte[] bArr) {
        int m14335g = PacketUtil.m14335g(bArr);
        m12240q1(PacketUtil.m14334h(bArr) > 1);
        PacketListener m14375g = ListenerQueue.m14378d().m14375g(m14335g);
        Commend m12261b1 = m12261b1(bArr);
        if (m12261b1 == null) {
            if (m14375g != null) {
                m14375g.mo11457c(-4);
                return;
            }
            return;
        }
        if (m14375g != null) {
            m14375g.mo11456d(m12261b1);
        }
        m12284G0(bluetoothDevice, m12261b1);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: d */
    public void mo302d(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo302d(bluetoothDevice, i);
        ListenerQueue.m14378d().m14377e();
        this.f13820r.removeCallbacks(this.f13819E);
        m11983k0(bluetoothDevice);
        CustomChannelCache.m11954a();
        m12242p1(null);
        m12238r1(null);
        m12236s1(null);
        m12234t1(null);
    }

    /* renamed from: d1 */
    public void m12259d1(int i, PacketListener packetListener) {
        m12255h1(new Commend(20007, CmdHelper.m14177g(i)), packetListener);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: e */
    public void mo301e(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo301e(bluetoothDevice, i);
        m12260c1(7);
    }

    /* renamed from: e1 */
    public void m12258e1(PacketListener packetListener) {
        m12255h1(new Commend(20009, CmdHelper.m14178f()), packetListener);
    }

    /* renamed from: f1 */
    public void m12257f1(PacketListener packetListener) {
        m12255h1(new Commend(20003, CmdHelper.m14176h()), packetListener);
    }

    /* renamed from: g1 */
    public void m12256g1(DeviceDataCallback deviceDataCallback) {
        if (this.f13821s.contains(deviceDataCallback)) {
            return;
        }
        this.f13821s.add(deviceDataCallback);
    }

    /* renamed from: i1 */
    public void m12254i1(PacketListener packetListener) {
        m12255h1(new Commend(20018, CmdHelper.m14183a()), packetListener);
    }

    /* renamed from: j1 */
    public void m12253j1(PacketListener packetListener) {
        m12255h1(new Commend(20020, CmdHelper.m14183a()), packetListener);
    }

    /* renamed from: k1 */
    protected void m12252k1(byte[] bArr, final PacketListener packetListener) {
        if (this.f13900n == null) {
            C4971k.m8657c(this.f13899m, "send data failed, device may be disconnected");
            if (packetListener != null) {
                packetListener.mo11457c(-1);
                return;
            }
            return;
        }
        final int m14335g = PacketUtil.m14335g(bArr);
        WriteRequest m346J = m346J(this.f13900n, bArr);
        m346J.m372V();
        m346J.m385I(new BeforeCallback() { // from class: com.ifengyu.intercom.i.o
            @Override // no.nordicsemi.android.ble.p307v2.BeforeCallback
            /* renamed from: a */
            public final void mo366a(BluetoothDevice bluetoothDevice) {
                LiteBleManager.this.m12274O0(m14335g, packetListener, bluetoothDevice);
            }
        });
        m346J.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.i.n
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                LiteBleManager.this.m12272Q0(bluetoothDevice);
            }
        });
        m346J.m383K(new FailCallback() { // from class: com.ifengyu.intercom.i.m
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                LiteBleManager.this.m12270S0(m14335g, bluetoothDevice, i);
            }
        });
        m346J.m379O(new InvalidRequestCallback() { // from class: com.ifengyu.intercom.i.l
            @Override // no.nordicsemi.android.ble.p307v2.InvalidRequestCallback
            /* renamed from: a */
            public final void mo362a() {
                LiteBleManager.this.m12268U0(m14335g);
            }
        });
        m346J.mo418f();
    }

    /* renamed from: n1 */
    public void m12246n1(PacketListener packetListener) {
        m12255h1(new Commend(20014, CmdHelper.m14179e()), packetListener);
    }

    /* renamed from: o1 */
    public void m12244o1(boolean z) {
        this.f13823u = z;
    }

    /* renamed from: p1 */
    public void m12242p1(DH dh) {
        this.f13828z = dh;
    }

    /* renamed from: q1 */
    public void m12240q1(boolean z) {
        this.f13825w = z;
    }

    /* renamed from: r1 */
    public void m12238r1(byte[] bArr) {
        this.f13816B = bArr;
    }

    /* renamed from: s1 */
    public void m12236s1(byte[] bArr) {
        this.f13815A = bArr;
    }

    /* renamed from: t1 */
    public void m12234t1(byte[] bArr) {
        this.f13817C = bArr;
    }

    /* renamed from: u1 */
    public void m12232u1(String str, byte[] bArr, PacketListener packetListener) {
        String str2 = this.f13899m;
        C4971k.m8657c(str2, "startConnectRequest deviceId: " + str);
        m12255h1(new Commend(20001, CmdHelper.m14182b(str, bArr)), packetListener);
    }

    /* renamed from: v1 */
    public void m12230v1(byte[] bArr, PacketListener packetListener) {
        m12255h1(new Commend(20023, CmdHelper.m14180d(bArr)), packetListener);
    }

    /* renamed from: w1 */
    public void m12228w1(DeviceDataCallback deviceDataCallback) {
        this.f13821s.remove(deviceDataCallback);
    }

    /* renamed from: x1 */
    public void m12226x1(int i, int i2, int i3, int i4, int i5, PacketListener packetListener) {
        m12255h1(new Commend(20012, CmdHelper.m14173k(i, i2, i3, i4, i5)), packetListener);
    }

    /* renamed from: y1 */
    public void m12224y1(LiteProtos.ChannelInfo channelInfo, PacketListener packetListener) {
        m12255h1(new Commend(20012, CmdHelper.m14172l(channelInfo)), packetListener);
    }

    /* renamed from: z0 */
    protected DH m12223z0() {
        return this.f13828z;
    }

    /* renamed from: z1 */
    public void m12222z1(int i, PacketListener packetListener) {
        m12255h1(new Commend(20005, CmdHelper.m14175i(i)), packetListener);
    }
}
