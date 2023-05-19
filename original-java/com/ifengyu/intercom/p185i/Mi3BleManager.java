package com.ifengyu.intercom.p185i;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.common.collect.Sets;
import com.google.protobuf.Message;
import com.ifengyu.blelib.p151b.DeviceDataCallback;
import com.ifengyu.blelib.p151b.ListenerQueue;
import com.ifengyu.blelib.p151b.PacketListener;
import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.blelib.p152c.CRC16;
import com.ifengyu.blelib.p152c.Commend;
import com.ifengyu.blelib.p152c.CommendParser;
import com.ifengyu.blelib.p153d.CustomDataMerge;
import com.ifengyu.blelib.utils.DH;
import com.ifengyu.blelib.utils.EncryptUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.database.AppDatabase;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p181h.p182b.p183a.C3850b;
import com.ifengyu.intercom.p181h.p182b.p183a.C3852c;
import com.ifengyu.intercom.p185i.p186z0.BaseBleManager;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p191a.CustomChannelCache;
import com.ifengyu.intercom.p189l.p190a.p191a.RemoteChannelCache;
import com.ifengyu.intercom.p189l.p190a.p197d.MobReportUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p189l.p198b.p203d.Mi3CmdHelper;
import com.ifengyu.intercom.p189l.p198b.p203d.Mi3CommendParser;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.ProtobufUtil;
import com.ifengyu.intercom.protos.BleProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.utils.C4971k;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import no.nordicsemi.android.ble.RequestQueue;
import no.nordicsemi.android.ble.WriteRequest;
import no.nordicsemi.android.ble.data.DataMerger;
import no.nordicsemi.android.ble.p307v2.BeforeCallback;
import no.nordicsemi.android.ble.p307v2.FailCallback;
import no.nordicsemi.android.ble.p307v2.InvalidRequestCallback;
import no.nordicsemi.android.ble.p307v2.SuccessCallback;

/* renamed from: com.ifengyu.intercom.i.w0 */
/* loaded from: classes2.dex */
public class Mi3BleManager extends BaseBleManager {

    /* renamed from: D */
    public static final UUID f13839D = DeviceConstants.f13914b;

    /* renamed from: E */
    public static final UUID f13840E = DeviceConstants.f13915c;

    /* renamed from: F */
    public static final UUID f13841F = DeviceConstants.f13916d;

    /* renamed from: G */
    public static final UUID f13842G = UUID.fromString("0000AECB-0000-1000-8000-00805f9b34fb");

    /* renamed from: A */
    private long f13843A;

    /* renamed from: B */
    private final Runnable f13844B;

    /* renamed from: C */
    private final Map<Integer, List<Message>> f13845C;

    /* renamed from: r */
    private final Handler f13846r;

    /* renamed from: s */
    protected final List<DeviceDataCallback> f13847s;

    /* renamed from: t */
    private final CommendParser f13848t;

    /* renamed from: u */
    private final Set<Integer> f13849u;

    /* renamed from: v */
    private final Set<Integer> f13850v;

    /* renamed from: w */
    private DH f13851w;

    /* renamed from: x */
    private byte[] f13852x;

    /* renamed from: y */
    private byte[] f13853y;

    /* renamed from: z */
    private byte[] f13854z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3BleManager.java */
    /* renamed from: com.ifengyu.intercom.i.w0$a */
    /* loaded from: classes2.dex */
    public class C3915a extends PacketListener {
        C3915a() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = ((BaseBleManager) Mi3BleManager.this).f13899m;
            C4971k.m8647m(str, "query device param failed, status: " + i);
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            C4971k.m8659a(((BaseBleManager) Mi3BleManager.this).f13899m, "query device param success");
            BleProtos.DeviceInfo deviceInfo = (BleProtos.DeviceInfo) commend.m14356b();
            Mi3BleManager mi3BleManager = Mi3BleManager.this;
            mi3BleManager.m12212E1(deviceInfo, mi3BleManager.m12211F0());
            MiTalkClientUtil.m11204j0(ProtobufUtil.m11169a(deviceInfo.getConfigInfo().getName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3BleManager.java */
    /* renamed from: com.ifengyu.intercom.i.w0$b */
    /* loaded from: classes2.dex */
    public class C3916b extends PacketListener {
        C3916b() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = ((BaseBleManager) Mi3BleManager.this).f13899m;
            C4971k.m8657c(str, "exchange key commend write failed, status: " + i);
            Mi3BleManager.this.m12185d1(i == -5 ? 6 : 7);
            Mi3BleManager.this.m339l().mo418f();
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            byte[] byteArray = ((BleProtos.PublicKey) commend.m14356b()).getValue().toByteArray();
            if (C4971k.m8653g()) {
                String str = ((BaseBleManager) Mi3BleManager.this).f13899m;
                C4971k.m8659a(str, "received public key: " + ByteUtils.m14367b(byteArray));
            }
            Mi3BleManager.this.f13851w.m14321b(byteArray);
            Mi3BleManager mi3BleManager = Mi3BleManager.this;
            mi3BleManager.m12156v1(mi3BleManager.f13851w.m14319d());
            Mi3BleManager mi3BleManager2 = Mi3BleManager.this;
            mi3BleManager2.m12158u1(mi3BleManager2.f13851w.m14320c());
            if (C4971k.m8653g()) {
                String str2 = ((BaseBleManager) Mi3BleManager.this).f13899m;
                C4971k.m8659a(str2, "generate secret key: " + ByteUtils.m14367b(Mi3BleManager.this.f13851w.m14317f()));
            }
            Mi3BleManager.this.m12170o1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3BleManager.java */
    /* renamed from: com.ifengyu.intercom.i.w0$c */
    /* loaded from: classes2.dex */
    public class C3917c extends PacketListener {
        C3917c() {
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: c */
        public void mo11457c(int i) {
            String str = ((BaseBleManager) Mi3BleManager.this).f13899m;
            C4971k.m8657c(str, "login commend write failed, status: " + i);
            Mi3BleManager.this.m12185d1(i == -5 ? 6 : 7);
            Mi3BleManager.this.m339l().mo418f();
        }

        @Override // com.ifengyu.blelib.p151b.PacketListener
        /* renamed from: d */
        public void mo11456d(Commend commend) {
            Mi3BleManager.this.m12206I0(commend);
        }
    }

    public Mi3BleManager(@NonNull Context context) {
        super(context);
        this.f13846r = new Handler(Looper.getMainLooper());
        this.f13847s = new ArrayList();
        this.f13848t = new Mi3CommendParser();
        this.f13849u = Sets.newHashSet(20001, 20002);
        this.f13850v = Sets.newHashSet(20003, 20004);
        this.f13844B = new Runnable() { // from class: com.ifengyu.intercom.i.y
            @Override // java.lang.Runnable
            public final void run() {
                Mi3BleManager.this.m12197R0();
            }
        };
        this.f13845C = new ConcurrentHashMap();
    }

    /* renamed from: A0 */
    private void m12221A0(BluetoothDevice bluetoothDevice, Commend commend) {
        for (DeviceDataCallback deviceDataCallback : this.f13847s) {
            deviceDataCallback.mo11499a(bluetoothDevice, commend);
        }
        if (commend.m14357a() == 20014 && ((BleProtos.DeviceInfo) commend.m14356b()).getConfigInfo().getShareLoc() == BleProtos.Switch.ON) {
            C4971k.m8659a(this.f13899m, "开启共享未知通知");
            MiTalkiApp.m14296h().startService(new Intent(MiTalkiApp.m14296h(), ShareLocationService.class));
        }
    }

    /* renamed from: B0 */
    private byte[] m12219B0(byte[] bArr) {
        byte[] m12217C0;
        if (!m12151y0(bArr)) {
            C4971k.m8657c(this.f13899m, "parse received pack-->invalid crc");
            return null;
        }
        int m12401b = C3852c.m12401b(bArr);
        int m12394i = C3852c.m12394i(bArr);
        int m12396g = C3852c.m12396g(bArr);
        byte[] m12399d = C3852c.m12399d(bArr);
        boolean z = C3852c.m12395h(bArr) == 1;
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "parse received pack-->cmdId: " + m12401b + ", version: " + m12394i + ", seq: " + m12396g + ", data: " + ByteUtils.m14367b(m12399d));
        }
        if (z) {
            m12217C0 = m12217C0(EncryptUtils.m14315b(m12399d, this.f13852x, this.f13853y));
            if (C4971k.m8653g()) {
                String str2 = this.f13899m;
                C4971k.m8659a(str2, "parse received pack-->decrypted data: " + ByteUtils.m14367b(m12217C0));
            }
        } else {
            m12217C0 = m12217C0(m12399d);
        }
        if (m12217C0 == null) {
            C4971k.m8659a(this.f13899m, "parse receive pack-->data is null");
            return null;
        }
        return m12217C0;
    }

    /* renamed from: C0 */
    private byte[] m12217C0(byte[] bArr) {
        if (bArr.length < 2) {
            String str = this.f13899m;
            C4971k.m8657c(str, "unpack, real data length < 2, data: " + ByteUtils.m14367b(bArr));
            return null;
        }
        int m12398e = C3852c.m12398e(bArr);
        if (bArr.length < m12398e + 2) {
            String str2 = this.f13899m;
            C4971k.m8657c(str2, "unpack, real data length < dataLen + 2, data: " + ByteUtils.m14367b(bArr));
            return null;
        }
        return C3852c.m12402a(bArr, 2, m12398e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    /* renamed from: E1 */
    public void m12212E1(final BleProtos.DeviceInfo deviceInfo, final byte[] bArr) {
        Observable.just(deviceInfo).map(new Function() { // from class: com.ifengyu.intercom.i.x
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Mi3BleManager.this.m12188a1(deviceInfo, bArr, (BleProtos.DeviceInfo) obj);
            }
        }).subscribeOn(Schedulers.m800io()).subscribe(C3859b0.f13734a, C3893s0.f13775a);
    }

    /* renamed from: G0 */
    private boolean m12209G0(Commend commend, int i) {
        int m14354d = commend.m14354d();
        if (commend.m14357a() == 20051) {
            List<Message> list = this.f13845C.get(Integer.valueOf(i));
            if (list == null) {
                list = new ArrayList<>();
                this.f13845C.put(Integer.valueOf(i), list);
            }
            if (m14354d == 6) {
                list.add(commend.m14356b());
                return true;
            } else if (m14354d == 5) {
                commend.m14353e(new ArrayList());
                commend.m14352f(0);
                this.f13845C.remove(Integer.valueOf(i));
                PacketListener m14375g = ListenerQueue.m14378d().m14375g(i);
                if (m14375g != null) {
                    m14375g.mo11456d(commend);
                    return true;
                }
            } else if (m14354d == 0) {
                list.add(commend.m14356b());
                commend.m14353e(list);
                this.f13845C.remove(Integer.valueOf(i));
                PacketListener m14375g2 = ListenerQueue.m14378d().m14375g(i);
                if (m14375g2 != null) {
                    m14375g2.mo11456d(commend);
                    return true;
                }
            }
        } else {
            PacketListener m14375g3 = ListenerQueue.m14378d().m14375g(i);
            if (m14375g3 != null) {
                m14375g3.mo11456d(commend);
                return true;
            }
        }
        return false;
    }

    /* renamed from: H0 */
    private boolean m12207H0(Commend commend) {
        if (commend.m14357a() == 20004) {
            m12206I0(commend);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I0 */
    public void m12206I0(Commend commend) {
        int m14354d = commend.m14354d();
        this.f13846r.removeCallbacks(this.f13844B);
        if (m14354d != 0) {
            if (m14354d == 2) {
                C4971k.m8659a(this.f13899m, "waiting confirm connection");
                m12185d1(3);
                this.f13846r.postDelayed(this.f13844B, 20000L);
                return;
            } else if (m14354d == 3) {
                C4971k.m8647m(this.f13899m, "connect failed, device low power");
                m12185d1(4);
                m339l().mo418f();
                return;
            } else if (m14354d == 4) {
                C4971k.m8647m(this.f13899m, "connect failed, device forbidden");
                m12185d1(2);
                m339l().mo418f();
                return;
            } else {
                C4971k.m8647m(this.f13899m, "connect failed, other reason");
                m12185d1(7);
                m339l().mo418f();
                return;
            }
        }
        BleProtos.ConnectInfo connectInfo = (BleProtos.ConnectInfo) commend.m14356b();
        C4971k.m8659a(this.f13899m, "Allow to connect");
        m12156v1(connectInfo.getKey().toByteArray());
        m12158u1(connectInfo.getIv().toByteArray());
        m12154w1(connectInfo.getToken().toByteArray());
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "received key: " + ByteUtils.m14367b(m12213E0()) + ", iv: " + ByteUtils.m14367b(m12215D0()) + ", token: " + ByteUtils.m14367b(m12211F0()));
        }
        m12185d1(1);
        m12182g1(new C3915a());
        MiTalkClientUtil.m11272A0(14);
        MiTalkClientUtil.m11206i0(m335p().getAddress());
        MiTalkClientUtil.m11176x0(true);
        MobReportUtils.m11810a(connectInfo.getDeviceType());
    }

    /* renamed from: J0 */
    private void m12205J0(BluetoothDevice bluetoothDevice, Commend commend) {
        if (commend.m14357a() == 20071 || commend.m14357a() == 20072) {
            MiBus.getInstance().m6412i((BleProtos.LocationInfo) commend.m14356b());
        }
    }

    /* renamed from: K0 */
    private boolean m12204K0(int i) {
        return this.f13849u.contains(Integer.valueOf(i));
    }

    /* renamed from: L0 */
    private boolean m12203L0(int i) {
        return this.f13850v.contains(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M0 */
    public /* synthetic */ void m12201N0(BluetoothDevice bluetoothDevice, int i) {
        String str = this.f13899m;
        C4971k.m8657c(str, "enableNotifications onRequestFailed-->device: " + bluetoothDevice + ", status: " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public /* synthetic */ void m12199P0(BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8654f(str, "enableNotifications onRequestCompleted-->device: " + bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q0 */
    public /* synthetic */ void m12197R0() {
        m12185d1(6);
        m339l().mo418f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S0 */
    public static /* synthetic */ void m12196S0(PacketListener packetListener, int i, BluetoothDevice bluetoothDevice) {
        if (packetListener != null) {
            ListenerQueue.m14378d().m14374h(i, packetListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T0 */
    public /* synthetic */ void m12194U0(BluetoothDevice bluetoothDevice) {
        String str = this.f13899m;
        C4971k.m8654f(str, "send data success, device: " + bluetoothDevice);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V0 */
    public /* synthetic */ void m12192W0(int i, BluetoothDevice bluetoothDevice, int i2) {
        String str = this.f13899m;
        C4971k.m8657c(str, "send data failed, device: " + bluetoothDevice + ", status: " + i2);
        PacketListener m14375g = ListenerQueue.m14378d().m14375g(i);
        if (m14375g != null) {
            m14375g.mo11457c(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X0 */
    public /* synthetic */ void m12190Y0(int i) {
        C4971k.m8647m(this.f13899m, "send data failed, invalid request");
        PacketListener m14375g = ListenerQueue.m14378d().m14375g(i);
        if (m14375g != null) {
            m14375g.mo11457c(-4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z0 */
    public /* synthetic */ DeviceModel m12188a1(BleProtos.DeviceInfo deviceInfo, byte[] bArr, BleProtos.DeviceInfo deviceInfo2) throws Exception {
        BluetoothDevice m335p = m335p();
        if (m335p != null) {
            DeviceDao mo14270E = AppDatabase.m14276F().mo14270E();
            DeviceModel mo14239f = mo14270E.mo14239f(m335p.getAddress());
            if (mo14239f == null) {
                mo14239f = new DeviceModel();
            }
            mo14239f.setAddress(m335p.getAddress());
            mo14239f.setName(ProtobufUtil.m11169a(deviceInfo.getConfigInfo().getName()));
            mo14239f.setDeviceType(14);
            mo14239f.setConnected(true);
            mo14239f.setDeviceId(String.valueOf(deviceInfo2.getDeviceId()));
            mo14239f.setVersionHw(deviceInfo2.getVerHw());
            mo14239f.setVersionSoft(deviceInfo2.getVerSoft());
            mo14239f.setDeviceColor(deviceInfo2.getColor().getNumber());
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
    /* renamed from: d1 */
    public void m12185d1(int i) {
        RxBus.m11806d().m11805e(new ConnectEvent(i));
    }

    /* renamed from: m1 */
    private void m12174m1(Commend commend, PacketListener packetListener) {
        byte[] m12155w0 = m12155w0(commend.m14357a(), commend.m14356b().toByteArray());
        if (m12155w0 == null) {
            return;
        }
        m12172n1(m12155w0, packetListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o1 */
    public void m12170o1() {
        m12152x1(m12211F0(), new C3917c());
    }

    /* renamed from: p1 */
    private void m12168p1(byte[] bArr) {
        m12150y1(bArr, new C3916b());
    }

    /* renamed from: w0 */
    private byte[] m12155w0(int i, byte[] bArr) {
        byte[] m14314c;
        int i2 = 1;
        if (m12204K0(i)) {
            m14314c = m12153x0(bArr);
            i2 = 0;
        } else if (m12203L0(i)) {
            m14314c = EncryptUtils.m14314c(m12153x0(bArr), this.f13852x, this.f13853y);
        } else {
            m14314c = EncryptUtils.m14314c(m12153x0(bArr), this.f13852x, this.f13853y);
        }
        if (m14314c == null) {
            C4971k.m8657c(this.f13899m, "fina data is null");
            return null;
        }
        C3850b c3850b = new C3850b(i, i2, m14314c);
        byte[] m12410e = c3850b.m12410e();
        if (C4971k.m8653g()) {
            String str = this.f13899m;
            C4971k.m8659a(str, "send commend-->cmdId: " + i + ", packet: " + c3850b);
        }
        return m12410e;
    }

    /* renamed from: x0 */
    private byte[] m12153x0(byte[] bArr) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis == this.f13843A) {
            currentTimeMillis++;
        }
        this.f13843A = currentTimeMillis;
        byte[] array = ByteBuffer.allocate(8).putLong(currentTimeMillis).array();
        byte[] bArr2 = new byte[bArr.length + 2 + 2 + array.length];
        C3852c.m12393j(bArr2, bArr.length, 0, 2);
        System.arraycopy(bArr, 0, bArr2, 2, bArr.length);
        C3852c.m12393j(bArr2, array.length, bArr.length + 2, 2);
        System.arraycopy(array, 0, bArr2, bArr.length + 2 + 2, array.length);
        return bArr2;
    }

    /* renamed from: y0 */
    private boolean m12151y0(byte[] bArr) {
        return ByteUtils.m14366c(C3852c.m12400c(bArr), CRC16.m14359b(C3852c.m12402a(bArr, 0, bArr.length - 2)));
    }

    /* renamed from: A1 */
    public void m12220A1(BleProtos.Channel channel, PacketListener packetListener) {
        m12174m1(new Commend(20033, channel), packetListener);
    }

    /* renamed from: B1 */
    public void m12218B1(ChannelModel channelModel, int i, PacketListener packetListener) {
        m12174m1(new Commend(20033, Mi3CmdHelper.m11559o(channelModel, i)), packetListener);
    }

    /* renamed from: C1 */
    public void m12216C1(String str, PacketListener packetListener) {
        m12174m1(new Commend(20012, Mi3CmdHelper.m11557q(str)), packetListener);
    }

    /* renamed from: D0 */
    protected byte[] m12215D0() {
        return this.f13853y;
    }

    /* renamed from: D1 */
    public void m12214D1(BleProtos.VoxType voxType, PacketListener packetListener) {
        m12174m1(new Commend(20012, Mi3CmdHelper.m11556r(voxType)), packetListener);
    }

    /* renamed from: E0 */
    protected byte[] m12213E0() {
        return this.f13852x;
    }

    /* renamed from: F0 */
    protected byte[] m12211F0() {
        return this.f13854z;
    }

    /* renamed from: F1 */
    public void m12210F1(ChannelModel channelModel, PacketListener packetListener) {
        m12174m1(new Commend(20026, Mi3CmdHelper.m11558p(channelModel)), packetListener);
    }

    /* renamed from: G1 */
    public void m12208G1(boolean z, PacketListener packetListener) {
        m12174m1(new Commend(20012, Mi3CmdHelper.m11560n(z)), packetListener);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: P */
    protected void mo12004P(RequestQueue requestQueue) {
        WriteRequest m336o = m336o(this.f13901o);
        m336o.m383K(new FailCallback() { // from class: com.ifengyu.intercom.i.u
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                Mi3BleManager.this.m12201N0(bluetoothDevice, i);
            }
        });
        m336o.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.i.w
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                Mi3BleManager.this.m12199P0(bluetoothDevice);
            }
        });
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
        return f13841F;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: V */
    protected UUID mo11998V() {
        return f13839D;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: W */
    protected int mo11997W() {
        return 500;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: Y */
    protected UUID mo11995Y() {
        return f13839D;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: Z */
    protected UUID mo11994Z() {
        return f13842G;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: a */
    public void mo305a(@NonNull BluetoothDevice bluetoothDevice) {
        super.mo305a(bluetoothDevice);
        ListenerQueue.m14378d().m14376f();
        DH dh = new DH();
        dh.m14322a();
        m12160t1(dh);
        DeviceModel mo14239f = AppDatabase.m14276F().mo14270E().mo14239f(bluetoothDevice.getAddress());
        if (mo14239f != null) {
            m12154w1(ByteUtils.m14362g(mo14239f.getToken()));
        }
        m12168p1(dh.m14318e());
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: b0 */
    protected UUID mo11992b0() {
        return f13840E;
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager
    /* renamed from: c0 */
    protected void mo11991c0(BluetoothDevice bluetoothDevice, byte[] bArr) {
        int m12396g = C3852c.m12396g(bArr);
        int m12401b = C3852c.m12401b(bArr);
        int m12397f = C3852c.m12397f(bArr);
        String str = this.f13899m;
        C4971k.m8659a(str, "cmdId: " + m12401b + ", seqId: " + m12396g + ", responseCode: " + m12397f);
        Commend mo11555a = this.f13848t.mo11555a(m12401b, m12219B0(bArr));
        if (mo11555a == null) {
            mo11555a = new Commend(m12401b, null, m12397f);
        } else {
            mo11555a.m14352f(m12397f);
        }
        m12209G0(mo11555a, m12396g);
        if (m12207H0(mo11555a)) {
            return;
        }
        m12221A0(bluetoothDevice, mo11555a);
        m12205J0(bluetoothDevice, mo11555a);
    }

    /* renamed from: c1 */
    public WriteRequest m12186c1(byte[] bArr) {
        return m11993a0(m11996X(), bArr);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: d */
    public void mo302d(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo302d(bluetoothDevice, i);
        ListenerQueue.m14378d().m14377e();
        this.f13846r.removeCallbacks(this.f13844B);
        m11983k0(bluetoothDevice);
        RemoteChannelCache.m11946a();
        RemoteChannelCache.m11940g(false);
        CustomChannelCache.m11954a();
        CustomChannelCache.m11948g(false);
        m12160t1(null);
        m12158u1(null);
        m12156v1(null);
        m12154w1(null);
    }

    @Override // com.ifengyu.intercom.p185i.p186z0.BaseBleManager, no.nordicsemi.android.ble.p309x2.ConnectionObserver
    /* renamed from: e */
    public void mo301e(@NonNull BluetoothDevice bluetoothDevice, int i) {
        super.mo301e(bluetoothDevice, i);
        m12185d1(7);
    }

    /* renamed from: e1 */
    public void m12184e1(PacketListener packetListener) {
        m12174m1(new Commend(20030, Mi3CmdHelper.m11562l()), packetListener);
    }

    /* renamed from: f1 */
    public void m12183f1(PacketListener packetListener) {
        m12174m1(new Commend(20050, Mi3CmdHelper.m11564j()), packetListener);
    }

    /* renamed from: g1 */
    public void m12182g1(PacketListener packetListener) {
        m12174m1(new Commend(20010, Mi3CmdHelper.m11569e()), packetListener);
    }

    /* renamed from: h1 */
    public void m12181h1(PacketListener packetListener) {
        m12174m1(new Commend(20052, Mi3CmdHelper.m11573a()), packetListener);
    }

    /* renamed from: i1 */
    public void m12180i1(int i, int i2, PacketListener packetListener) {
        m12174m1(new Commend(20020, Mi3CmdHelper.m11561m(i, i2)), packetListener);
    }

    /* renamed from: j1 */
    public void m12179j1(PacketListener packetListener) {
        m12174m1(new Commend(20050, Mi3CmdHelper.m11563k()), packetListener);
    }

    /* renamed from: k1 */
    public void m12178k1(PacketListener packetListener) {
        m12174m1(new Commend(20052, Mi3CmdHelper.m11572b()), packetListener);
    }

    /* renamed from: l1 */
    public void m12176l1(DeviceDataCallback deviceDataCallback) {
        if (this.f13847s.contains(deviceDataCallback)) {
            return;
        }
        this.f13847s.add(deviceDataCallback);
    }

    /* renamed from: n1 */
    protected void m12172n1(byte[] bArr, final PacketListener packetListener) {
        if (this.f13900n == null) {
            C4971k.m8657c(this.f13899m, "send data failed, device may be disconnected");
            if (packetListener != null) {
                packetListener.mo11457c(-1);
                return;
            }
            return;
        }
        final int m12396g = C3852c.m12396g(bArr);
        WriteRequest m345K = m345K(this.f13900n, bArr, 2);
        m345K.m372V();
        m345K.m385I(new BeforeCallback() { // from class: com.ifengyu.intercom.i.t
            @Override // no.nordicsemi.android.ble.p307v2.BeforeCallback
            /* renamed from: a */
            public final void mo366a(BluetoothDevice bluetoothDevice) {
                Mi3BleManager.m12196S0(PacketListener.this, m12396g, bluetoothDevice);
            }
        });
        m345K.m384J(new SuccessCallback() { // from class: com.ifengyu.intercom.i.a0
            @Override // no.nordicsemi.android.ble.p307v2.SuccessCallback
            /* renamed from: a */
            public final void mo357a(BluetoothDevice bluetoothDevice) {
                Mi3BleManager.this.m12194U0(bluetoothDevice);
            }
        });
        m345K.m383K(new FailCallback() { // from class: com.ifengyu.intercom.i.z
            @Override // no.nordicsemi.android.ble.p307v2.FailCallback
            /* renamed from: a */
            public final void mo363a(BluetoothDevice bluetoothDevice, int i) {
                Mi3BleManager.this.m12192W0(m12396g, bluetoothDevice, i);
            }
        });
        m345K.m379O(new InvalidRequestCallback() { // from class: com.ifengyu.intercom.i.v
            @Override // no.nordicsemi.android.ble.p307v2.InvalidRequestCallback
            /* renamed from: a */
            public final void mo362a() {
                Mi3BleManager.this.m12190Y0(m12396g);
            }
        });
        m345K.mo418f();
    }

    /* renamed from: q1 */
    public void m12166q1(BeanUserLocation beanUserLocation, PacketListener packetListener) {
        m12174m1(new Commend(20070, Mi3CmdHelper.m11568f(beanUserLocation)), packetListener);
    }

    /* renamed from: r1 */
    public void m12164r1(PacketListener packetListener) {
        m12174m1(new Commend(20060, Mi3CmdHelper.m11567g()), packetListener);
    }

    /* renamed from: s1 */
    public void m12162s1(int i, PacketListener packetListener) {
        m12174m1(new Commend(20060, Mi3CmdHelper.m11566h(i)), packetListener);
    }

    /* renamed from: t1 */
    public void m12160t1(DH dh) {
        this.f13851w = dh;
    }

    /* renamed from: u1 */
    public void m12158u1(byte[] bArr) {
        this.f13853y = bArr;
    }

    /* renamed from: v1 */
    public void m12156v1(byte[] bArr) {
        this.f13852x = bArr;
    }

    /* renamed from: w1 */
    public void m12154w1(byte[] bArr) {
        this.f13854z = bArr;
    }

    /* renamed from: x1 */
    public void m12152x1(byte[] bArr, PacketListener packetListener) {
        m12174m1(new Commend(20003, Mi3CmdHelper.m11571c(bArr)), packetListener);
    }

    /* renamed from: y1 */
    public void m12150y1(byte[] bArr, PacketListener packetListener) {
        m12174m1(new Commend(20001, Mi3CmdHelper.m11565i(bArr)), packetListener);
    }

    /* renamed from: z0 */
    public void m12149z0(int i, int i2, PacketListener packetListener) {
        m12174m1(new Commend(20026, Mi3CmdHelper.m11570d(i, i2)), packetListener);
    }

    /* renamed from: z1 */
    public void m12148z1(DeviceDataCallback deviceDataCallback) {
        this.f13847s.remove(deviceDataCallback);
    }
}
