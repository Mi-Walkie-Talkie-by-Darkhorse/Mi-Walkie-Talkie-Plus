package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.autonavi.ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.PushMessageHandler;
import com.xiaomi.push.ak;
import com.xiaomi.push.en;
import com.xiaomi.push.fl;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class MessageHandleService extends BaseService {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentLinkedQueue<a> f8668a = new ConcurrentLinkedQueue<>();

    /* renamed from: a  reason: collision with other field name */
    private static ExecutorService f24a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Intent f8669a;

        /* renamed from: a  reason: collision with other field name */
        private PushMessageReceiver f25a;

        public a(Intent intent, PushMessageReceiver pushMessageReceiver) {
            this.f25a = pushMessageReceiver;
            this.f8669a = intent;
        }

        public Intent a() {
            return this.f8669a;
        }

        /* renamed from: a  reason: collision with other method in class */
        public PushMessageReceiver m12a() {
            return this.f25a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, Intent intent) {
        if (intent != null) {
            b(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, a aVar) {
        String[] stringArrayExtra;
        if (aVar != null) {
            try {
                PushMessageReceiver a2 = aVar.m12a();
                Intent a3 = aVar.a();
                int intExtra = a3.getIntExtra(PushMessageHelper.MESSAGE_TYPE, 1);
                if (intExtra == 1) {
                    PushMessageHandler.a a4 = am.a(context).a(a3);
                    int intExtra2 = a3.getIntExtra("eventMessageType", -1);
                    if (a4 == null) {
                        return;
                    }
                    if (a4 instanceof MiPushMessage) {
                        MiPushMessage miPushMessage = (MiPushMessage) a4;
                        if (!miPushMessage.isArrivedMessage()) {
                            a2.onReceiveMessage(context, miPushMessage);
                        }
                        if (miPushMessage.getPassThrough() == 1) {
                            en.a(context.getApplicationContext()).a(context.getPackageName(), a3, 2004, (String) null);
                            b.e("begin execute onReceivePassThroughMessage from " + miPushMessage.getMessageId());
                            a2.onReceivePassThroughMessage(context, miPushMessage);
                            return;
                        } else if (miPushMessage.isNotified()) {
                            if (intExtra2 == 1000) {
                                en.a(context.getApplicationContext()).a(context.getPackageName(), a3, ERROR_CODE.CONN_INDOOR_ERROR, (String) null);
                            } else {
                                en.a(context.getApplicationContext()).a(context.getPackageName(), a3, 3007, (String) null);
                            }
                            b.e("begin execute onNotificationMessageClicked from\u3000" + miPushMessage.getMessageId());
                            a2.onNotificationMessageClicked(context, miPushMessage);
                            return;
                        } else {
                            b.e("begin execute onNotificationMessageArrived from " + miPushMessage.getMessageId());
                            a2.onNotificationMessageArrived(context, miPushMessage);
                            return;
                        }
                    } else if (a4 instanceof MiPushCommandMessage) {
                        MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) a4;
                        b.e("begin execute onCommandResult, command=" + miPushCommandMessage.getCommand() + ", resultCode=" + miPushCommandMessage.getResultCode() + ", reason=" + miPushCommandMessage.getReason());
                        a2.onCommandResult(context, miPushCommandMessage);
                        if (TextUtils.equals(miPushCommandMessage.getCommand(), fl.COMMAND_REGISTER.f354a)) {
                            a2.onReceiveRegisterResult(context, miPushCommandMessage);
                            PushMessageHandler.a(context, miPushCommandMessage);
                            if (miPushCommandMessage.getResultCode() != 0) {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } else if (intExtra == 3) {
                    MiPushCommandMessage miPushCommandMessage2 = (MiPushCommandMessage) a3.getSerializableExtra(PushMessageHelper.KEY_COMMAND);
                    b.e("(Local) begin execute onCommandResult, command=" + miPushCommandMessage2.getCommand() + ", resultCode=" + miPushCommandMessage2.getResultCode() + ", reason=" + miPushCommandMessage2.getReason());
                    a2.onCommandResult(context, miPushCommandMessage2);
                    if (TextUtils.equals(miPushCommandMessage2.getCommand(), fl.COMMAND_REGISTER.f354a)) {
                        a2.onReceiveRegisterResult(context, miPushCommandMessage2);
                        PushMessageHandler.a(context, miPushCommandMessage2);
                        if (miPushCommandMessage2.getResultCode() != 0) {
                            return;
                        }
                    } else {
                        return;
                    }
                } else if (intExtra == 5 && PushMessageHelper.ERROR_TYPE_NEED_PERMISSION.equals(a3.getStringExtra(PushMessageHelper.ERROR_TYPE)) && (stringArrayExtra = a3.getStringArrayExtra(PushMessageHelper.ERROR_MESSAGE)) != null) {
                    b.e("begin execute onRequirePermissions, lack of necessary permissions");
                    a2.onRequirePermissions(context, stringArrayExtra);
                    return;
                } else {
                    return;
                }
                i.b(context);
            } catch (RuntimeException e) {
                b.a(e);
            }
        }
    }

    public static void addJob(Context context, a aVar) {
        if (aVar != null) {
            f8668a.add(aVar);
            b(context);
            startService(context);
        }
    }

    private static void b(Context context) {
        if (!f24a.isShutdown()) {
            f24a.execute(new z(context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context) {
        try {
            a(context, f8668a.poll());
        } catch (RuntimeException e) {
            b.a(e);
        }
    }

    public static void startService(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, MessageHandleService.class));
        ak.a(context).a(new y(context, intent));
    }

    @Override // com.xiaomi.mipush.sdk.BaseService
    /* renamed from: a */
    protected boolean mo17a() {
        ConcurrentLinkedQueue<a> concurrentLinkedQueue = f8668a;
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
