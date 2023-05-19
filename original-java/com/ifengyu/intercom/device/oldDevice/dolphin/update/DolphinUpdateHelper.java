package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.DolphinBleManager;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.j */
/* loaded from: classes2.dex */
public class DolphinUpdateHelper implements IDolphinUpdateAckReceived {

    /* renamed from: a */
    private Context f13012a;

    /* renamed from: b */
    private String f13013b;

    /* renamed from: g */
    private IUpdateTransport f13018g;

    /* renamed from: j */
    private AlarmManager f13021j;

    /* renamed from: o */
    private C3607c f13026o;

    /* renamed from: p */
    private final BroadcastReceiver f13027p;

    /* renamed from: c */
    private int f13014c = 200;

    /* renamed from: d */
    private int f13015d = 200;

    /* renamed from: e */
    private int f13016e = 200;

    /* renamed from: f */
    private MitalkProtos.UPDATESTATECODE f13017f = MitalkProtos.UPDATESTATECODE.PREPARE;

    /* renamed from: h */
    private Lock f13019h = new ReentrantLock();

    /* renamed from: i */
    private final Lock f13020i = new ReentrantLock();

    /* renamed from: k */
    private int f13022k = 0;

    /* renamed from: l */
    private int f13023l = 0;

    /* renamed from: m */
    private volatile boolean f13024m = false;

    /* renamed from: n */
    private volatile boolean f13025n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinUpdateHelper.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.j$a */
    /* loaded from: classes2.dex */
    public class C3605a extends BroadcastReceiver {
        C3605a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonUtil.m11087c(intent.getAction().equals("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
            DolphinUpdateHelper.this.m13127o(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinUpdateHelper.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.j$b */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3606b {

        /* renamed from: a */
        static final /* synthetic */ int[] f13029a;

        static {
            int[] iArr = new int[MitalkProtos.UPDATESTATECODE.values().length];
            f13029a = iArr;
            try {
                iArr[MitalkProtos.UPDATESTATECODE.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13029a[MitalkProtos.UPDATESTATECODE.TRANSPORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13029a[MitalkProtos.UPDATESTATECODE.FINISH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13029a[MitalkProtos.UPDATESTATECODE.PREPARE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DolphinUpdateHelper.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.j$c */
    /* loaded from: classes2.dex */
    public class C3607c extends Thread {

        /* renamed from: a */
        private volatile boolean f13030a;

        private C3607c() {
        }

        /* renamed from: a */
        void m13115a() {
            this.f13030a = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f13030a = false;
            while (!this.f13030a) {
                if ((!DolphinUpdateHelper.this.f13018g.hasNext() || DolphinUpdateHelper.this.f13018g.mo13081g() > 2) && !DolphinUpdateHelper.this.f13018g.mo13082e()) {
                    if (!BleCoreClient.m12373n().m12372o(DolphinUpdateHelper.this.f13013b)) {
                        DolphinUpdateHelper.this.m13142A(false);
                        return;
                    }
                } else {
                    DolphinUpdateHelper.this.f13018g.mo13068f();
                }
                try {
                    DolphinUpdateHelper.this.m13140C();
                } catch (InterruptedException unused) {
                    C4161y.m11043l("UpdateHelper", "SendDataThread interrupted.");
                }
            }
        }

        /* synthetic */ C3607c(DolphinUpdateHelper dolphinUpdateHelper, C3605a c3605a) {
            this();
        }
    }

    public DolphinUpdateHelper(Context context, boolean z, String str) {
        C3605a c3605a = new C3605a();
        this.f13027p = c3605a;
        this.f13012a = context;
        this.f13013b = str;
        this.f13021j = (AlarmManager) context.getSystemService("alarm");
        this.f13012a.registerReceiver(c3605a, new IntentFilter("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
        this.f13018g = m13128n(z);
        DolphinUpdateDeviceService.m13148a().m13144e(this);
        DolphinUpdateDeviceService.m13148a().m13143f(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void m13142A(boolean z) {
        if (this.f13024m) {
            return;
        }
        if (this.f13017f.ordinal() > MitalkProtos.UPDATESTATECODE.REQUEST.ordinal() && !z) {
            this.f13018g.mo13070b();
        }
        this.f13012a.unregisterReceiver(this.f13027p);
        m13133i();
        this.f13018g.release();
        m13117y();
        this.f13021j = null;
        this.f13024m = true;
        this.f13025n = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public void m13140C() throws InterruptedException {
        synchronized (this.f13020i) {
            this.f13020i.wait();
        }
    }

    /* renamed from: h */
    private void m13134h() {
        int i;
        DolphinBleManager m12378i = BleCoreClient.m12373n().m12378i(this.f13013b);
        if ((m12378i != null ? m12378i.m12000T() : 0) >= 160) {
            i = MethodsUtils.m11276x(21) ? 100 : 200;
        } else {
            i = 100000;
        }
        this.f13016e = i;
        this.f13014c = i;
        this.f13015d = i;
        C4161y.m11054a("UpdateHelper", "adjustSendInterval: interval=" + i);
    }

    /* renamed from: i */
    private void m13133i() {
        AlarmManager alarmManager = this.f13021j;
        if (alarmManager != null) {
            alarmManager.cancel(m13130l());
        }
    }

    /* renamed from: j */
    private void m13132j(int i, MitalkProtos.UPDATESTATECODE updatestatecode) {
        this.f13022k = i;
        this.f13017f = updatestatecode;
    }

    /* renamed from: k */
    private void m13131k() {
        int i;
        int i2 = this.f13014c;
        if (i2 > this.f13016e || i2 > (i = this.f13015d) || i2 <= 5) {
            return;
        }
        int i3 = i2 - 5;
        this.f13014c = i3;
        if (i3 < i) {
            this.f13015d = i3;
        }
        C4161y.m11054a("UpdateHelper", "decrease sendInterval to " + this.f13014c);
    }

    /* renamed from: l */
    private PendingIntent m13130l() {
        return PendingIntent.getBroadcast(this.f13012a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f13012a.getPackageName()), 268435456);
    }

    /* renamed from: n */
    private IUpdateTransport m13128n(boolean z) {
        if (z) {
            return new McuUpdateTransport(this.f13012a, this.f13021j);
        }
        return new BleUpdateTransport(this.f13012a, this.f13021j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m13127o(int i) {
        C4161y.m11042m("UpdateHelper", "handleAckWaitingTimerFired");
        this.f13019h.lock();
        try {
            int i2 = this.f13023l + 1;
            this.f13023l = i2;
            if (i2 == 5) {
                C4161y.m11052c("UpdateHelper", "Too many consecutive failures, discard update.");
                m13142A(false);
            } else {
                MitalkProtos.UPDATESTATECODE updatestatecode = this.f13017f;
                if (updatestatecode == MitalkProtos.UPDATESTATECODE.REQUEST) {
                    C4161y.m11052c("UpdateHelper", "update request timeout, discard update.");
                    m13142A(false);
                } else if (updatestatecode == MitalkProtos.UPDATESTATECODE.FINISH) {
                    C4161y.m11052c("UpdateHelper", "wait crc32 result timeout, discard update.");
                    m13142A(false);
                } else {
                    IUpdateTransport iUpdateTransport = this.f13018g;
                    if (iUpdateTransport != null) {
                        iUpdateTransport.mo13080h(i);
                    }
                    m13123s();
                }
            }
        } finally {
            this.f13019h.unlock();
        }
    }

    /* renamed from: p */
    private void m13126p() {
        int i = this.f13014c;
        if (i >= this.f13016e || i <= this.f13015d) {
            this.f13014c = i + 5;
            C4161y.m11054a("UpdateHelper", "increase sendInterval to " + this.f13014c);
        }
    }

    /* renamed from: s */
    private void m13123s() {
        synchronized (this.f13020i) {
            this.f13020i.notifyAll();
        }
    }

    /* renamed from: t */
    private void m13122t(boolean z) {
        if (z) {
            m13133i();
            m13116z();
            m13132j(100, MitalkProtos.UPDATESTATECODE.RESTART);
            if (!this.f13018g.mo13070b()) {
                m13142A(false);
                return;
            } else {
                m13142A(true);
                return;
            }
        }
        C4161y.m11052c("UpdateHelper", "update failed, maybe crc32 is not right.");
        m13142A(false);
    }

    /* renamed from: u */
    private void m13121u(boolean z, int i) {
        if (C4161y.m11048g()) {
            C4161y.m11054a("UpdateHelper", "onRequestAckReceived, result=" + z + ", ackId=" + i);
        }
        if (z && i == 0) {
            m13133i();
            m13116z();
            m13132j(5, MitalkProtos.UPDATESTATECODE.TRANSPORT);
            if (this.f13026o == null) {
                this.f13026o = new C3607c(this, null);
            }
            this.f13026o.start();
            return;
        }
        C4161y.m11052c("UpdateHelper", "response false or not expected ack, exit update.");
        m13142A(false);
    }

    /* renamed from: v */
    private void m13120v(boolean z, int i) {
        if (C4161y.m11048g()) {
            C4161y.m11054a("UpdateHelper", "onTransportAckReceived: result=" + z + ", ackId=" + i);
        }
        if (z) {
            m13133i();
            m13116z();
            m13131k();
            this.f13018g.mo13078j(i);
            if (this.f13018g.mo13077k()) {
                m13132j(99, MitalkProtos.UPDATESTATECODE.FINISH);
                if (!this.f13018g.mo13069d()) {
                    m13142A(false);
                }
                m13117y();
                return;
            }
            m13123s();
            return;
        }
        C4161y.m11052c("UpdateHelper", "response false or not expected ackId, ackId=" + i + ", expected ackId=" + this.f13018g.mo13076l());
        m13126p();
        m13127o(i);
    }

    /* renamed from: w */
    private boolean m13119w(int i, MitalkProtos.FILETYPE filetype, String str) {
        if (C4161y.m11046i()) {
            C4161y.m11043l("UpdateHelper", "prepareForUpdate: version=" + i + ", updateType=" + filetype.name() + ", filePath=" + str);
        }
        this.f13024m = false;
        this.f13025n = false;
        m13134h();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.f13018g.mo13079i(str, i, filetype);
        m13132j(2, MitalkProtos.UPDATESTATECODE.PREPARE);
        return true;
    }

    /* renamed from: y */
    private void m13117y() {
        C3607c c3607c = this.f13026o;
        if (c3607c != null) {
            c3607c.m13115a();
            this.f13026o = null;
        }
    }

    /* renamed from: z */
    private void m13116z() {
        this.f13023l = 0;
    }

    /* renamed from: B */
    public void m13141B(int i, MitalkProtos.FILETYPE filetype, String str) {
        if (!m13119w(i, filetype, str)) {
            C4161y.m11052c("UpdateHelper", "prepare update error.");
            m13142A(false);
            return;
        }
        this.f13017f = MitalkProtos.UPDATESTATECODE.REQUEST;
        this.f13018g.mo13071a();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDolphinUpdateAckReceived
    /* renamed from: a */
    public void mo13085a(MitalkProtos.STATECODE statecode, int i) {
        C4161y.m11054a("UpdateHelper", "processReceivedAck state=" + this.f13017f + ", result=" + statecode + ", ackId=" + i);
        this.f13019h.lock();
        try {
            int i2 = C3606b.f13029a[this.f13017f.ordinal()];
            if (i2 == 1) {
                m13121u(statecode == MitalkProtos.STATECODE.SUCCESS, i);
            } else if (i2 == 2) {
                m13120v(statecode == MitalkProtos.STATECODE.SUCCESS, i);
            } else if (i2 == 3) {
                m13122t(statecode == MitalkProtos.STATECODE.SUCCESS);
            }
        } finally {
            this.f13019h.unlock();
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDolphinUpdateAckReceived
    /* renamed from: b */
    public void mo13084b(MitalkProtos.UPDATESTATECODE updatestatecode, boolean z, int i) {
        C4161y.m11054a("UpdateHelper", "processReceivedAck: state=" + updatestatecode + ", result=" + z + ", ackId=" + i);
        this.f13019h.lock();
        try {
            MitalkProtos.UPDATESTATECODE updatestatecode2 = this.f13017f;
            CommonUtil.m11084f(updatestatecode2 == updatestatecode, "invalid state, Expecting state is %s, but got %s", updatestatecode2.name(), updatestatecode.name());
            int i2 = C3606b.f13029a[updatestatecode.ordinal()];
            if (i2 == 1) {
                m13121u(z, i);
            } else if (i2 == 2) {
                m13120v(z, i);
            } else if (i2 == 3) {
                m13122t(z);
            }
        } finally {
            this.f13019h.unlock();
        }
    }

    /* renamed from: m */
    public int m13129m() {
        int i;
        int i2 = C3606b.f13029a[this.f13017f.ordinal()];
        if (i2 == 1) {
            int i3 = this.f13022k;
            if (i3 < 4) {
                this.f13022k = i3 + 1;
            }
        } else if (i2 == 2) {
            int i4 = this.f13022k;
            if (i4 < 98) {
                this.f13022k = this.f13018g.mo13083c(i4);
            }
        } else if (i2 == 3) {
            int i5 = this.f13022k;
            if (i5 < 99) {
                this.f13022k = i5 + 1;
            }
        } else if (i2 == 4 && (i = this.f13022k) < 1) {
            this.f13022k = i + 1;
        }
        return this.f13022k;
    }

    /* renamed from: q */
    public boolean m13125q() {
        return this.f13024m;
    }

    /* renamed from: r */
    public boolean m13124r() {
        return this.f13025n;
    }

    /* renamed from: x */
    public void m13118x() {
        if (this.f13024m) {
            return;
        }
        DolphinUpdateDeviceService.m13148a().m13144e(null);
    }
}
