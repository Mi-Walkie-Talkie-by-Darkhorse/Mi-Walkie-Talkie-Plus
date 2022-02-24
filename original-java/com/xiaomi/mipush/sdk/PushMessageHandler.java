package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.MessageHandleService;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.push.en;
import com.xiaomi.push.fl;
import com.xiaomi.push.hz;
import com.xiaomi.push.jf;
import com.xiaomi.push.u;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class PushMessageHandler extends BaseService {

    /* renamed from: a  reason: collision with root package name */
    private static List<MiPushClient.ICallbackResult> f8673a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private static List<MiPushClient.MiPushClientCallback> f8674b = new ArrayList();

    /* renamed from: a  reason: collision with other field name */
    private static ThreadPoolExecutor f36a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a extends Serializable {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a() {
        synchronized (f8674b) {
            f8674b.clear();
        }
    }

    public static void a(long j, String str, String str2) {
        synchronized (f8674b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f8674b) {
                miPushClientCallback.onInitializeResult(j, str, str2);
            }
        }
    }

    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, PushMessageHandler.class));
        try {
            context.startService(intent);
        } catch (Exception e) {
            b.m1a(e.getMessage());
        }
    }

    public static void a(Context context, Intent intent) {
        b.c("addjob PushMessageHandler " + intent);
        if (intent != null) {
            c(context, intent);
            a(context);
        }
    }

    private static void a(Context context, Intent intent, ResolveInfo resolveInfo, boolean z) {
        try {
            MessageHandleService.a aVar = new MessageHandleService.a(intent, (PushMessageReceiver) u.a(context, resolveInfo.activityInfo.name).newInstance());
            if (z) {
                MessageHandleService.a(context.getApplicationContext(), aVar);
            } else {
                MessageHandleService.addJob(context.getApplicationContext(), aVar);
            }
            MessageHandleService.a(context, new Intent(context.getApplicationContext(), MessageHandleService.class));
        } catch (Throwable th) {
            b.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, MiPushCommandMessage miPushCommandMessage) {
        synchronized (f8673a) {
            for (MiPushClient.ICallbackResult iCallbackResult : f8673a) {
                if (iCallbackResult instanceof MiPushClient.UPSRegisterCallBack) {
                    MiPushClient.TokenResult tokenResult = new MiPushClient.TokenResult();
                    if (!(miPushCommandMessage == null || miPushCommandMessage.getCommandArguments() == null || miPushCommandMessage.getCommandArguments().size() <= 0)) {
                        tokenResult.setResultCode(miPushCommandMessage.getResultCode());
                        tokenResult.setToken(miPushCommandMessage.getCommandArguments().get(0));
                    }
                    iCallbackResult.onResult(tokenResult);
                }
            }
        }
    }

    public static void a(Context context, MiPushMessage miPushMessage) {
        synchronized (f8674b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f8674b) {
                if (a(miPushMessage.getCategory(), miPushClientCallback.getCategory())) {
                    miPushClientCallback.onReceiveMessage(miPushMessage.getContent(), miPushMessage.getAlias(), miPushMessage.getTopic(), miPushMessage.isNotified());
                    miPushClientCallback.onReceiveMessage(miPushMessage);
                }
            }
        }
    }

    public static void a(Context context, a aVar) {
        if (aVar instanceof MiPushMessage) {
            a(context, (MiPushMessage) aVar);
        } else if (aVar instanceof MiPushCommandMessage) {
            MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) aVar;
            String command = miPushCommandMessage.getCommand();
            String str = null;
            if (fl.COMMAND_REGISTER.f354a.equals(command)) {
                List<String> commandArguments = miPushCommandMessage.getCommandArguments();
                if (commandArguments != null && !commandArguments.isEmpty()) {
                    str = commandArguments.get(0);
                }
                a(miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (fl.COMMAND_SET_ALIAS.f354a.equals(command) || fl.COMMAND_UNSET_ALIAS.f354a.equals(command) || fl.COMMAND_SET_ACCEPT_TIME.f354a.equals(command)) {
                a(context, miPushCommandMessage.getCategory(), command, miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), miPushCommandMessage.getCommandArguments());
            } else if (fl.COMMAND_SUBSCRIBE_TOPIC.f354a.equals(command)) {
                List<String> commandArguments2 = miPushCommandMessage.getCommandArguments();
                if (commandArguments2 != null && !commandArguments2.isEmpty()) {
                    str = commandArguments2.get(0);
                }
                a(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (fl.COMMAND_UNSUBSCRIBE_TOPIC.f354a.equals(command)) {
                List<String> commandArguments3 = miPushCommandMessage.getCommandArguments();
                if (commandArguments3 != null && !commandArguments3.isEmpty()) {
                    str = commandArguments3.get(0);
                }
                b(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, String str, long j, String str2, String str3) {
        synchronized (f8674b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f8674b) {
                if (a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onSubscribeResult(j, str2, str3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, String str, String str2, long j, String str3, List<String> list) {
        synchronized (f8674b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f8674b) {
                if (a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onCommandResult(str2, j, str3, list);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(MiPushClient.ICallbackResult iCallbackResult) {
        synchronized (f8673a) {
            if (!f8673a.contains(iCallbackResult)) {
                f8673a.add(iCallbackResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(MiPushClient.MiPushClientCallback miPushClientCallback) {
        synchronized (f8674b) {
            if (!f8674b.contains(miPushClientCallback)) {
                f8674b.add(miPushClientCallback);
            }
        }
    }

    protected static boolean a(String str, String str2) {
        return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.equals(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b() {
        synchronized (f8673a) {
            f8673a.clear();
        }
    }

    private static void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setPackage(context.getPackageName());
            intent.setAction("action_clicked_activity_finish");
            context.sendBroadcast(intent, d.a(context));
        } catch (Exception e) {
            b.m1a("callback sync error" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(Context context, Intent intent) {
        boolean z = false;
        try {
            z = intent.getBooleanExtra("is_clicked_activity_call", false);
        } catch (Throwable th) {
            b.m1a("intent unparcel error:" + th);
        }
        try {
            ResolveInfo resolveInfo = null;
            if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
                o.a(context, intent, null);
            } else if ("com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
                hz hzVar = new hz();
                jf.a(hzVar, intent.getByteArrayExtra("mipush_payload"));
                b.c("PushMessageHandler.onHandleIntent " + hzVar.d());
                MiTinyDataClient.upload(context, hzVar);
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                if (m16b()) {
                    b.d("receive a message before application calling initialize");
                    if (!z) {
                        return;
                    }
                    return;
                }
                a a2 = am.a(context).a(intent);
                if (a2 != null) {
                    a(context, a2);
                }
            } else if (!"com.xiaomi.mipush.sdk.SYNC_LOG".equals(intent.getAction())) {
                Intent intent2 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
                intent2.setPackage(context.getPackageName());
                intent2.putExtras(intent);
                try {
                    List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent2, 32);
                    if (queryBroadcastReceivers != null) {
                        Iterator<ResolveInfo> it = queryBroadcastReceivers.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ResolveInfo next = it.next();
                            if (next.activityInfo != null && next.activityInfo.packageName.equals(context.getPackageName()) && PushMessageReceiver.class.isAssignableFrom(u.a(context, next.activityInfo.name))) {
                                resolveInfo = next;
                                break;
                            }
                        }
                    }
                    if (resolveInfo != null) {
                        a(context, intent2, resolveInfo, z);
                    } else {
                        b.d("cannot find the receiver to handler this message, check your manifest");
                        en.a(context).a(context.getPackageName(), intent, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE);
                    }
                } catch (Exception e) {
                    b.a(e);
                    en.a(context).a(context.getPackageName(), intent, "9");
                }
            }
            if (!z) {
                return;
            }
        } catch (Throwable th2) {
            try {
                b.a(th2);
                en.a(context).a(context.getPackageName(), intent, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
                if (!z) {
                    return;
                }
            } finally {
                if (z) {
                    b(context);
                }
            }
        }
        b(context);
    }

    protected static void b(Context context, String str, long j, String str2, String str3) {
        synchronized (f8674b) {
            for (MiPushClient.MiPushClientCallback miPushClientCallback : f8674b) {
                if (a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onUnsubscribeResult(j, str2, str3);
                }
            }
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m16b() {
        return f8674b.isEmpty();
    }

    private static void c(Context context, Intent intent) {
        if (intent != null && !f36a.isShutdown()) {
            f36a.execute(new al(context, intent));
        }
    }

    @Override // com.xiaomi.mipush.sdk.BaseService
    /* renamed from: a  reason: collision with other method in class */
    protected boolean mo17a() {
        ThreadPoolExecutor threadPoolExecutor = f36a;
        return (threadPoolExecutor == null || threadPoolExecutor.getQueue() == null || f36a.getQueue().size() <= 0) ? false : true;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.xiaomi.mipush.sdk.BaseService, android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        c(getApplicationContext(), intent);
    }
}
