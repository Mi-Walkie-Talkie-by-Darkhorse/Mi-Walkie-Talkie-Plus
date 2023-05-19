package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.PushMessageHandler;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.EnumC6157fl;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class MessageHandleService extends BaseService {

    /* renamed from: a */
    private static ConcurrentLinkedQueue<C5903a> f20855a = new ConcurrentLinkedQueue<>();

    /* renamed from: a */
    private static ExecutorService f20856a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: com.xiaomi.mipush.sdk.MessageHandleService$a */
    /* loaded from: classes2.dex */
    public static class C5903a {

        /* renamed from: a */
        private Intent f20857a;

        /* renamed from: a */
        private PushMessageReceiver f20858a;

        public C5903a(Intent intent, PushMessageReceiver pushMessageReceiver) {
            this.f20858a = pushMessageReceiver;
            this.f20857a = intent;
        }

        /* renamed from: a */
        public Intent m4071a() {
            return this.f20857a;
        }

        /* renamed from: a */
        public PushMessageReceiver m4070a() {
            return this.f20858a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4075a(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        m4073b(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4074a(Context context, C5903a c5903a) {
        String[] stringArrayExtra;
        if (c5903a == null) {
            return;
        }
        try {
            PushMessageReceiver m4070a = c5903a.m4070a();
            Intent m4071a = c5903a.m4071a();
            int intExtra = m4071a.getIntExtra(PushMessageHelper.MESSAGE_TYPE, 1);
            if (intExtra == 1) {
                PushMessageHandler.InterfaceC5912a m4006a = C5926am.m4010a(context).m4006a(m4071a);
                int intExtra2 = m4071a.getIntExtra("eventMessageType", -1);
                if (m4006a == null) {
                    return;
                }
                if (m4006a instanceof MiPushMessage) {
                    MiPushMessage miPushMessage = (MiPushMessage) m4006a;
                    if (!miPushMessage.isArrivedMessage()) {
                        m4070a.onReceiveMessage(context, miPushMessage);
                    }
                    if (miPushMessage.getPassThrough() == 1) {
                        C6129en.m3082a(context.getApplicationContext()).m3079a(context.getPackageName(), m4071a, 2004, (String) null);
                        AbstractC5876b.m4137e("begin execute onReceivePassThroughMessage from " + miPushMessage.getMessageId());
                        m4070a.onReceivePassThroughMessage(context, miPushMessage);
                        return;
                    } else if (!miPushMessage.isNotified()) {
                        AbstractC5876b.m4137e("begin execute onNotificationMessageArrived from " + miPushMessage.getMessageId());
                        m4070a.onNotificationMessageArrived(context, miPushMessage);
                        return;
                    } else {
                        if (intExtra2 == 1000) {
                            C6129en.m3082a(context.getApplicationContext()).m3079a(context.getPackageName(), m4071a, ERROR_CODE.CONN_INDOOR_ERROR, (String) null);
                        } else {
                            C6129en.m3082a(context.getApplicationContext()).m3079a(context.getPackageName(), m4071a, 3007, (String) null);
                        }
                        AbstractC5876b.m4137e("begin execute onNotificationMessageClicked from\u3000" + miPushMessage.getMessageId());
                        m4070a.onNotificationMessageClicked(context, miPushMessage);
                        return;
                    }
                } else if (!(m4006a instanceof MiPushCommandMessage)) {
                    return;
                } else {
                    MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) m4006a;
                    AbstractC5876b.m4137e("begin execute onCommandResult, command=" + miPushCommandMessage.getCommand() + ", resultCode=" + miPushCommandMessage.getResultCode() + ", reason=" + miPushCommandMessage.getReason());
                    m4070a.onCommandResult(context, miPushCommandMessage);
                    if (!TextUtils.equals(miPushCommandMessage.getCommand(), EnumC6157fl.COMMAND_REGISTER.f21553a)) {
                        return;
                    }
                    m4070a.onReceiveRegisterResult(context, miPushCommandMessage);
                    PushMessageHandler.m4044a(context, miPushCommandMessage);
                    if (miPushCommandMessage.getResultCode() != 0) {
                        return;
                    }
                }
            } else if (intExtra != 3) {
                if (intExtra == 5 && PushMessageHelper.ERROR_TYPE_NEED_PERMISSION.equals(m4071a.getStringExtra(PushMessageHelper.ERROR_TYPE)) && (stringArrayExtra = m4071a.getStringArrayExtra(PushMessageHelper.ERROR_MESSAGE)) != null) {
                    AbstractC5876b.m4137e("begin execute onRequirePermissions, lack of necessary permissions");
                    m4070a.onRequirePermissions(context, stringArrayExtra);
                    return;
                }
                return;
            } else {
                MiPushCommandMessage miPushCommandMessage2 = (MiPushCommandMessage) m4071a.getSerializableExtra(PushMessageHelper.KEY_COMMAND);
                AbstractC5876b.m4137e("(Local) begin execute onCommandResult, command=" + miPushCommandMessage2.getCommand() + ", resultCode=" + miPushCommandMessage2.getResultCode() + ", reason=" + miPushCommandMessage2.getReason());
                m4070a.onCommandResult(context, miPushCommandMessage2);
                if (!TextUtils.equals(miPushCommandMessage2.getCommand(), EnumC6157fl.COMMAND_REGISTER.f21553a)) {
                    return;
                }
                m4070a.onReceiveRegisterResult(context, miPushCommandMessage2);
                PushMessageHandler.m4044a(context, miPushCommandMessage2);
                if (miPushCommandMessage2.getResultCode() != 0) {
                    return;
                }
            }
            C5946i.m3856b(context);
        } catch (RuntimeException e) {
            AbstractC5876b.m4143a(e);
        }
    }

    public static void addJob(Context context, C5903a c5903a) {
        if (c5903a != null) {
            f20855a.add(c5903a);
            m4073b(context);
            startService(context);
        }
    }

    /* renamed from: b */
    private static void m4073b(Context context) {
        if (f20856a.isShutdown()) {
            return;
        }
        f20856a.execute(new RunnableC5966z(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m4072c(Context context) {
        try {
            m4074a(context, f20855a.poll());
        } catch (RuntimeException e) {
            AbstractC5876b.m4143a(e);
        }
    }

    public static void startService(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, MessageHandleService.class));
        C5978ak.m3784a(context).m3775a(new RunnableC5965y(context, intent));
    }

    @Override // com.xiaomi.mipush.sdk.BaseService
    /* renamed from: a */
    protected boolean mo4049a() {
        ConcurrentLinkedQueue<C5903a> concurrentLinkedQueue = f20855a;
        return concurrentLinkedQueue != null && concurrentLinkedQueue.size() > 0;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
    }
}
