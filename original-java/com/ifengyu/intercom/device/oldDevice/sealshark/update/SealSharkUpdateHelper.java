package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.SealBleManager;
import com.ifengyu.intercom.p185i.SharkBleManager;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.library.utils.UIUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class SealSharkUpdateHelper implements ISealSharkUpdateAckReceived {

    /* renamed from: a */
    private Context f13581a;

    /* renamed from: b */
    private String f13582b;

    /* renamed from: g */
    private InterfaceC3831e f13587g;

    /* renamed from: j */
    private AlarmManager f13590j;

    /* renamed from: m */
    private int f13593m;

    /* renamed from: n */
    private InterfaceC3827e f13594n;

    /* renamed from: o */
    private C3826d f13595o;

    /* renamed from: p */
    private final BroadcastReceiver f13596p;

    /* renamed from: c */
    private int f13583c = 200;

    /* renamed from: d */
    private int f13584d = 200;

    /* renamed from: e */
    private int f13585e = 200;

    /* renamed from: f */
    private int f13586f = -1;

    /* renamed from: h */
    private Lock f13588h = new ReentrantLock();

    /* renamed from: i */
    private final Lock f13589i = new ReentrantLock();

    /* renamed from: k */
    private int f13591k = 0;

    /* renamed from: l */
    private volatile boolean f13592l = false;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface UpdateState {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper$a */
    /* loaded from: classes2.dex */
    public class C3823a extends BroadcastReceiver {
        C3823a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommonUtil.m11087c(intent.getAction().equals("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
            SealSharkUpdateHelper.this.m12565q();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper$b */
    /* loaded from: classes2.dex */
    class RunnableC3824b implements Runnable {
        RunnableC3824b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSharkUpdateHelper.this.f13594n.mo12554a(SealSharkUpdateHelper.this.f13587g.mo12541c(SealSharkUpdateHelper.this.f13593m));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper$c */
    /* loaded from: classes2.dex */
    public class RunnableC3825c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ boolean f13599a;

        /* renamed from: b */
        final /* synthetic */ int f13600b;

        RunnableC3825c(boolean z, int i) {
            this.f13599a = z;
            this.f13600b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SealSharkUpdateHelper.this.f13594n != null) {
                if (this.f13599a) {
                    SealSharkUpdateHelper.this.f13594n.onSuccess();
                } else {
                    SealSharkUpdateHelper.this.f13594n.onError(this.f13600b);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper$d */
    /* loaded from: classes2.dex */
    public class C3826d extends Thread {

        /* renamed from: a */
        private volatile boolean f13602a;

        private C3826d() {
        }

        /* renamed from: a */
        void m12555a() {
            this.f13602a = true;
            SealSharkUpdateHelper.this.m12563s();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f13602a = false;
            while (!this.f13602a) {
                if (SealSharkUpdateHelper.this.f13587g.mo12538g(SealSharkUpdateHelper.this.f13593m)) {
                    if (!BleCoreClient.m12373n().m12372o(SealSharkUpdateHelper.this.f13582b)) {
                        SealSharkUpdateHelper.this.m12556z(false);
                        return;
                    }
                    SealSharkUpdateHelper.this.f13587g.mo12513h(SealSharkUpdateHelper.this.f13593m);
                }
                try {
                    SealSharkUpdateHelper.this.m12580C();
                } catch (InterruptedException unused) {
                    C4161y.m11043l("SealSharkUpdateHelper", "SendDataThread interrupted.");
                }
            }
        }

        /* synthetic */ C3826d(SealSharkUpdateHelper sealSharkUpdateHelper, C3823a c3823a) {
            this();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.SealSharkUpdateHelper$e */
    /* loaded from: classes2.dex */
    public interface InterfaceC3827e {
        /* renamed from: a */
        void mo12554a(int i);

        void onError(int i);

        void onSuccess();
    }

    public SealSharkUpdateHelper(Context context, String str) {
        C3823a c3823a = new C3823a();
        this.f13596p = c3823a;
        this.f13581a = context;
        this.f13582b = str;
        this.f13590j = (AlarmManager) context.getSystemService("alarm");
        if (MiTalkClientUtil.m11191q() == 5) {
            this.f13587g = new SealMcuUpdateTransport(this.f13581a, this.f13590j);
        } else if (MiTalkClientUtil.m11191q() == 4) {
            this.f13587g = new SharkMcuUpdateTransport(this.f13581a, this.f13590j);
        }
        this.f13581a.registerReceiver(c3823a, new IntentFilter("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
        SealSharkUpdateDeviceService.m12530a().m12524g(this);
        SealSharkUpdateDeviceService.m12530a().m12525f(str);
    }

    /* renamed from: A */
    private void m12582A(boolean z, int i) {
        RunnableC3825c runnableC3825c;
        if (this.f13592l) {
            return;
        }
        if (this.f13586f > 0 && !z) {
            this.f13587g.mo12515b();
        }
        try {
            try {
                this.f13581a.unregisterReceiver(this.f13596p);
                m12570l();
                this.f13587g.release();
                m12558x();
                this.f13590j = null;
                this.f13592l = true;
                this.f13586f = -1;
                runnableC3825c = new RunnableC3825c(z, i);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                m12570l();
                this.f13587g.release();
                m12558x();
                this.f13590j = null;
                this.f13592l = true;
                this.f13586f = -1;
                runnableC3825c = new RunnableC3825c(z, i);
            }
            UIUtils.m8598t(runnableC3825c);
        } catch (Throwable th) {
            m12570l();
            this.f13587g.release();
            m12558x();
            this.f13590j = null;
            this.f13592l = true;
            this.f13586f = -1;
            UIUtils.m8598t(new RunnableC3825c(z, i));
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public void m12580C() throws InterruptedException {
        synchronized (this.f13589i) {
            this.f13589i.wait();
        }
    }

    /* renamed from: k */
    private void m12571k() {
        SharkBleManager m12374m;
        int i;
        int i2 = 0;
        if (MiTalkClientUtil.m11191q() == 5) {
            SealBleManager m12375l = BleCoreClient.m12373n().m12375l(this.f13582b);
            if (m12375l != null) {
                i2 = m12375l.m12000T();
            }
        } else if (MiTalkClientUtil.m11191q() == 4 && (m12374m = BleCoreClient.m12373n().m12374m(this.f13582b)) != null) {
            i2 = m12374m.m12000T();
        }
        if (i2 >= 160) {
            i = Build.VERSION.SDK_INT >= 21 ? 100 : 200;
        } else {
            i = 100000;
        }
        this.f13585e = i;
        this.f13583c = i;
        this.f13584d = i;
        C4161y.m11054a("SealSharkUpdateHelper", "adjustSendInterval: interval=" + i);
    }

    /* renamed from: l */
    private void m12570l() {
        AlarmManager alarmManager = this.f13590j;
        if (alarmManager != null) {
            alarmManager.cancel(m12567o());
        }
    }

    /* renamed from: m */
    private void m12569m(int i, int i2) {
        this.f13586f = i2;
    }

    /* renamed from: n */
    private void m12568n() {
        int i;
        int i2 = this.f13583c;
        if (i2 > this.f13585e || i2 > (i = this.f13584d) || i2 <= 5) {
            return;
        }
        int i3 = i2 - 5;
        this.f13583c = i3;
        if (i3 < i) {
            this.f13584d = i3;
        }
        C4161y.m11054a("SealSharkUpdateHelper", "decrease sendInterval to " + this.f13583c);
    }

    /* renamed from: o */
    private PendingIntent m12567o() {
        return PendingIntent.getBroadcast(this.f13581a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f13581a.getPackageName()), 268435456);
    }

    /* renamed from: p */
    private String m12566p(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "unknow" : "completed" : "transmitting" : "ready";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m12565q() {
        C4161y.m11042m("SealSharkUpdateHelper", "handleAckWaitingTimerFired");
        this.f13588h.lock();
        try {
            int i = this.f13591k + 1;
            this.f13591k = i;
            if (i == 5) {
                C4161y.m11052c("SealSharkUpdateHelper", "Too many consecutive failures, discard update.");
                m12556z(false);
            } else {
                int i2 = this.f13586f;
                if (i2 == 0) {
                    C4161y.m11052c("SealSharkUpdateHelper", "update request timeout, discard update.");
                    m12556z(false);
                } else if (i2 == 2) {
                    C4161y.m11052c("SealSharkUpdateHelper", "wait crc32 result timeout, discard update.");
                    m12556z(false);
                } else {
                    m12563s();
                }
            }
        } finally {
            this.f13588h.unlock();
        }
    }

    /* renamed from: r */
    private void m12564r() {
        int i = this.f13583c;
        if (i >= this.f13585e || i <= this.f13584d) {
            this.f13583c = i + 5;
            C4161y.m11054a("SealSharkUpdateHelper", "increase sendInterval to " + this.f13583c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public void m12563s() {
        synchronized (this.f13589i) {
            this.f13589i.notifyAll();
        }
    }

    /* renamed from: t */
    private void m12562t(boolean z) {
        if (z) {
            m12570l();
            m12557y();
            m12569m(100, 2);
            if (!this.f13587g.mo12515b()) {
                m12556z(false);
                return;
            } else {
                m12556z(true);
                return;
            }
        }
        C4161y.m11052c("SealSharkUpdateHelper", "update failed, maybe crc32 is not right.");
        m12556z(false);
    }

    /* renamed from: u */
    private void m12561u(boolean z, int i) {
        if (C4161y.m11048g()) {
            C4161y.m11054a("SealSharkUpdateHelper", "onReady, result=" + z + ", offset=" + i);
        }
        if (z && this.f13587g.mo12538g(i)) {
            m12570l();
            m12557y();
            m12569m(5, 1);
            if (this.f13595o == null) {
                this.f13595o = new C3826d(this, null);
            }
            this.f13595o.start();
            return;
        }
        C4161y.m11052c("SealSharkUpdateHelper", "response false or not expected offset, exit update.");
        m12556z(false);
    }

    /* renamed from: v */
    private void m12560v(boolean z, int i) {
        if (C4161y.m11048g()) {
            C4161y.m11054a("SealSharkUpdateHelper", "onTransport: result=" + z + ", offset=" + i);
        }
        if (z) {
            m12570l();
            m12557y();
            m12568n();
            this.f13587g.mo12539f(i);
            if (!this.f13587g.mo12538g(i)) {
                m12569m(99, 2);
                if (!this.f13587g.mo12514d()) {
                    m12556z(false);
                }
                m12558x();
                return;
            }
            m12563s();
            return;
        }
        m12564r();
        m12565q();
    }

    /* renamed from: w */
    private boolean m12559w(int i, String str) {
        if (C4161y.m11046i()) {
            C4161y.m11043l("SealSharkUpdateHelper", "prepareForUpdate: version=" + i + ", filePath=" + str);
        }
        this.f13592l = false;
        m12571k();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.f13587g.mo12540e(str, i);
        m12569m(2, 0);
        return true;
    }

    /* renamed from: x */
    private void m12558x() {
        C3826d c3826d = this.f13595o;
        if (c3826d != null) {
            c3826d.m12555a();
            this.f13595o = null;
        }
    }

    /* renamed from: y */
    private void m12557y() {
        this.f13591k = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public void m12556z(boolean z) {
        m12582A(z, 0);
    }

    /* renamed from: B */
    public void m12581B(int i, String str, InterfaceC3827e interfaceC3827e) {
        if (this.f13586f != -1) {
            return;
        }
        this.f13594n = interfaceC3827e;
        if (!m12559w(i, str)) {
            C4161y.m11052c("SealSharkUpdateHelper", "prepare update error.");
            m12556z(false);
            return;
        }
        this.f13586f = 0;
        this.f13587g.mo12516a();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.ISealSharkUpdateAckReceived
    /* renamed from: a */
    public void mo12543a() {
        m12582A(false, 1);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.ISealSharkUpdateAckReceived
    /* renamed from: b */
    public void mo12542b(boolean z, int i) {
        C4161y.m11054a("SealSharkUpdateHelper", "Current update state is " + m12566p(this.f13586f));
        this.f13593m = i;
        this.f13588h.lock();
        try {
            int i2 = this.f13586f;
            if (i2 == 0) {
                m12561u(z, this.f13593m);
            } else if (i2 == 1) {
                m12560v(z, this.f13593m);
            } else if (i2 == 2) {
                m12562t(z);
            }
            if (this.f13594n != null && z && this.f13587g.mo12538g(this.f13593m)) {
                UIUtils.m8598t(new RunnableC3824b());
            }
        } finally {
            this.f13588h.unlock();
        }
    }
}
