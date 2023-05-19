package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.MessageHandleService;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6157fl;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class PushMessageHandler extends BaseService {

    /* renamed from: a */
    private static List<MiPushClient.ICallbackResult> f20872a = new ArrayList();

    /* renamed from: b */
    private static List<MiPushClient.MiPushClientCallback> f20874b = new ArrayList();

    /* renamed from: a */
    private static ThreadPoolExecutor f20873a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.mipush.sdk.PushMessageHandler$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC5912a extends Serializable {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4050a() {
        synchronized (f20874b) {
            f20874b.clear();
        }
    }

    /* renamed from: a */
    public static void m4048a(long j, String str, String str2) {
        synchronized (f20874b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f20874b) {
                miPushClientCallback.onInitializeResult(j, str, str2);
            }
        }
    }

    /* renamed from: a */
    public static void m4047a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, PushMessageHandler.class));
        try {
            context.startService(intent);
        } catch (Exception e) {
            AbstractC5876b.m4147a(e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m4046a(Context context, Intent intent) {
        AbstractC5876b.m4139c("addjob PushMessageHandler " + intent);
        if (intent != null) {
            m4031c(context, intent);
            m4047a(context);
        }
    }

    /* renamed from: a */
    private static void m4045a(Context context, Intent intent, ResolveInfo resolveInfo, boolean z) {
        try {
            MessageHandleService.C5903a c5903a = new MessageHandleService.C5903a(intent, (PushMessageReceiver) C6469u.m1234a(context, resolveInfo.activityInfo.name).newInstance());
            if (z) {
                MessageHandleService.m4074a(context.getApplicationContext(), c5903a);
            } else {
                MessageHandleService.addJob(context.getApplicationContext(), c5903a);
            }
            MessageHandleService.m4075a(context, new Intent(context.getApplicationContext(), MessageHandleService.class));
        } catch (Throwable th) {
            AbstractC5876b.m4143a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4044a(Context context, MiPushCommandMessage miPushCommandMessage) {
        synchronized (f20872a) {
            for (MiPushClient.ICallbackResult iCallbackResult : f20872a) {
                if (iCallbackResult instanceof MiPushClient.UPSRegisterCallBack) {
                    MiPushClient.TokenResult tokenResult = new MiPushClient.TokenResult();
                    if (miPushCommandMessage != null && miPushCommandMessage.getCommandArguments() != null && miPushCommandMessage.getCommandArguments().size() > 0) {
                        tokenResult.setResultCode(miPushCommandMessage.getResultCode());
                        tokenResult.setToken(miPushCommandMessage.getCommandArguments().get(0));
                    }
                    iCallbackResult.onResult(tokenResult);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m4043a(Context context, MiPushMessage miPushMessage) {
        synchronized (f20874b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f20874b) {
                if (m4037a(miPushMessage.getCategory(), miPushClientCallback.getCategory())) {
                    miPushClientCallback.onReceiveMessage(miPushMessage.getContent(), miPushMessage.getAlias(), miPushMessage.getTopic(), miPushMessage.isNotified());
                    miPushClientCallback.onReceiveMessage(miPushMessage);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m4042a(Context context, InterfaceC5912a interfaceC5912a) {
        if (interfaceC5912a instanceof MiPushMessage) {
            m4043a(context, (MiPushMessage) interfaceC5912a);
        } else if (interfaceC5912a instanceof MiPushCommandMessage) {
            MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) interfaceC5912a;
            String command = miPushCommandMessage.getCommand();
            String str = null;
            if (EnumC6157fl.COMMAND_REGISTER.f21553a.equals(command)) {
                List<String> commandArguments = miPushCommandMessage.getCommandArguments();
                if (commandArguments != null && !commandArguments.isEmpty()) {
                    str = commandArguments.get(0);
                }
                m4048a(miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (EnumC6157fl.COMMAND_SET_ALIAS.f21553a.equals(command) || EnumC6157fl.COMMAND_UNSET_ALIAS.f21553a.equals(command) || EnumC6157fl.COMMAND_SET_ACCEPT_TIME.f21553a.equals(command)) {
                m4040a(context, miPushCommandMessage.getCategory(), command, miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), miPushCommandMessage.getCommandArguments());
            } else if (EnumC6157fl.COMMAND_SUBSCRIBE_TOPIC.f21553a.equals(command)) {
                List<String> commandArguments2 = miPushCommandMessage.getCommandArguments();
                if (commandArguments2 != null && !commandArguments2.isEmpty()) {
                    str = commandArguments2.get(0);
                }
                m4041a(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (EnumC6157fl.COMMAND_UNSUBSCRIBE_TOPIC.f21553a.equals(command)) {
                List<String> commandArguments3 = miPushCommandMessage.getCommandArguments();
                if (commandArguments3 != null && !commandArguments3.isEmpty()) {
                    str = commandArguments3.get(0);
                }
                m4032b(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4041a(Context context, String str, long j, String str2, String str3) {
        synchronized (f20874b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f20874b) {
                if (m4037a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onSubscribeResult(j, str2, str3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4040a(Context context, String str, String str2, long j, String str3, List<String> list) {
        synchronized (f20874b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f20874b) {
                if (m4037a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onCommandResult(str2, j, str3, list);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4039a(MiPushClient.ICallbackResult iCallbackResult) {
        synchronized (f20872a) {
            if (!f20872a.contains(iCallbackResult)) {
                f20872a.add(iCallbackResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m4038a(MiPushClient.MiPushClientCallback miPushClientCallback) {
        synchronized (f20874b) {
            if (!f20874b.contains(miPushClientCallback)) {
                f20874b.add(miPushClientCallback);
            }
        }
    }

    /* renamed from: a */
    protected static boolean m4037a(String str, String str2) {
        return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.equals(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m4036b() {
        synchronized (f20872a) {
            f20872a.clear();
        }
    }

    /* renamed from: b */
    private static void m4034b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setPackage(context.getPackageName());
            intent.setAction("action_clicked_activity_finish");
            context.sendBroadcast(intent, C5941d.m3888a(context));
        } catch (Exception e) {
            AbstractC5876b.m4147a("callback sync error" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m4033b(Context context, Intent intent) {
        boolean z = false;
        try {
            z = intent.getBooleanExtra("is_clicked_activity_call", false);
        } catch (Throwable th) {
            AbstractC5876b.m4147a("intent unparcel error:" + th);
        }
        try {
            ResolveInfo resolveInfo = null;
            if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
                C5953o.m3840a(context, intent, null);
            } else if ("com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
                C6241hz c6241hz = new C6241hz();
                C6278jf.m1932a(c6241hz, intent.getByteArrayExtra("mipush_payload"));
                AbstractC5876b.m4139c("PushMessageHandler.onHandleIntent " + c6241hz.m2530d());
                MiTinyDataClient.upload(context, c6241hz);
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                if (m4035b()) {
                    AbstractC5876b.m4138d("receive a message before application calling initialize");
                    if (z) {
                        m4034b(context);
                        return;
                    }
                    return;
                }
                InterfaceC5912a m4006a = C5926am.m4010a(context).m4006a(intent);
                if (m4006a != null) {
                    m4042a(context, m4006a);
                }
            } else if (!"com.xiaomi.mipush.sdk.SYNC_LOG".equals(intent.getAction())) {
                Intent intent2 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
                intent2.setPackage(context.getPackageName());
                intent2.putExtras(intent);
                try {
                    List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent2, 32);
                    if (queryBroadcastReceivers != null) {
                        Iterator<ResolveInfo> it2 = queryBroadcastReceivers.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            ResolveInfo next = it2.next();
                            ActivityInfo activityInfo = next.activityInfo;
                            if (activityInfo != null && activityInfo.packageName.equals(context.getPackageName()) && PushMessageReceiver.class.isAssignableFrom(C6469u.m1234a(context, next.activityInfo.name))) {
                                resolveInfo = next;
                                break;
                            }
                        }
                    }
                    if (resolveInfo != null) {
                        m4045a(context, intent2, resolveInfo, z);
                    } else {
                        AbstractC5876b.m4138d("cannot find the receiver to handler this message, check your manifest");
                        C6129en.m3082a(context).m3078a(context.getPackageName(), intent, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE);
                    }
                } catch (Exception e) {
                    AbstractC5876b.m4143a(e);
                    C6129en.m3082a(context).m3078a(context.getPackageName(), intent, "9");
                }
            }
        } catch (Throwable th2) {
            try {
                AbstractC5876b.m4143a(th2);
                C6129en.m3082a(context).m3078a(context.getPackageName(), intent, com.tencent.connect.common.Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
                if (!z) {
                }
            } finally {
                if (z) {
                    m4034b(context);
                }
            }
        }
    }

    /* renamed from: b */
    protected static void m4032b(Context context, String str, long j, String str2, String str3) {
        synchronized (f20874b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f20874b) {
                if (m4037a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onUnsubscribeResult(j, str2, str3);
                }
            }
        }
    }

    /* renamed from: b */
    public static boolean m4035b() {
        return f20874b.isEmpty();
    }

    /* renamed from: c */
    private static void m4031c(Context context, Intent intent) {
        if (intent == null || f20873a.isShutdown()) {
            return;
        }
        f20873a.execute(new RunnableC5925al(context, intent));
    }

    @Override // com.xiaomi.mipush.sdk.BaseService
    /* renamed from: a */
    protected boolean mo4049a() {
        ThreadPoolExecutor threadPoolExecutor = f20873a;
        return (threadPoolExecutor == null || threadPoolExecutor.getQueue() == null || f20873a.getQueue().size() <= 0) ? false : true;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        m4031c(getApplicationContext(), intent);
    }
}
