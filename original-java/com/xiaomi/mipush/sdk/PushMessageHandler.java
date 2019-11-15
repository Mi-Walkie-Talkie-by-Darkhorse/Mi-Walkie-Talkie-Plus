package com.xiaomi.mipush.sdk;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.MiPushClient.MiPushClientCallback;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PushMessageHandler extends IntentService {
    private static List<MiPushClientCallback> a = new ArrayList();

    interface a extends Serializable {
    }

    public PushMessageHandler() {
        super("mipush message handler");
    }

    protected static void a() {
        synchronized (a) {
            a.clear();
        }
    }

    public static void a(long j, String str, String str2) {
        synchronized (a) {
            for (MiPushClientCallback onInitializeResult : a) {
                onInitializeResult.onInitializeResult(j, str, str2);
            }
        }
    }

    public static void a(Context context, MiPushMessage miPushMessage) {
        synchronized (a) {
            for (MiPushClientCallback miPushClientCallback : a) {
                if (a(miPushMessage.getCategory(), miPushClientCallback.getCategory())) {
                    miPushClientCallback.onReceiveMessage(miPushMessage.getContent(), miPushMessage.getAlias(), miPushMessage.getTopic(), miPushMessage.isNotified());
                    miPushClientCallback.onReceiveMessage(miPushMessage);
                }
            }
        }
    }

    public static void a(Context context, a aVar) {
        String str = null;
        if (aVar instanceof MiPushMessage) {
            a(context, (MiPushMessage) aVar);
        } else if (aVar instanceof MiPushCommandMessage) {
            MiPushCommandMessage miPushCommandMessage = (MiPushCommandMessage) aVar;
            String command = miPushCommandMessage.getCommand();
            if (MiPushClient.COMMAND_REGISTER.equals(command)) {
                List commandArguments = miPushCommandMessage.getCommandArguments();
                if (commandArguments != null && !commandArguments.isEmpty()) {
                    str = (String) commandArguments.get(0);
                }
                a(miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), str);
            } else if (MiPushClient.COMMAND_SET_ALIAS.equals(command) || MiPushClient.COMMAND_UNSET_ALIAS.equals(command) || MiPushClient.COMMAND_SET_ACCEPT_TIME.equals(command)) {
                a(context, miPushCommandMessage.getCategory(), command, miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), miPushCommandMessage.getCommandArguments());
            } else if (MiPushClient.COMMAND_SUBSCRIBE_TOPIC.equals(command)) {
                List commandArguments2 = miPushCommandMessage.getCommandArguments();
                a(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), (commandArguments2 == null || commandArguments2.isEmpty()) ? null : (String) commandArguments2.get(0));
            } else if (MiPushClient.COMMAND_UNSUBSCRIBE_TOPIC.equals(command)) {
                List commandArguments3 = miPushCommandMessage.getCommandArguments();
                b(context, miPushCommandMessage.getCategory(), miPushCommandMessage.getResultCode(), miPushCommandMessage.getReason(), (commandArguments3 == null || commandArguments3.isEmpty()) ? null : (String) commandArguments3.get(0));
            }
        }
    }

    protected static void a(Context context, String str, long j, String str2, String str3) {
        synchronized (a) {
            for (MiPushClientCallback miPushClientCallback : a) {
                if (a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onSubscribeResult(j, str2, str3);
                }
            }
        }
    }

    protected static void a(Context context, String str, String str2, long j, String str3, List<String> list) {
        synchronized (a) {
            for (MiPushClientCallback miPushClientCallback : a) {
                if (a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onCommandResult(str2, j, str3, list);
                }
            }
        }
    }

    private void a(Intent intent, ResolveInfo resolveInfo) {
        try {
            MessageHandleService.addJob(new com.xiaomi.mipush.sdk.MessageHandleService.a(intent, (PushMessageReceiver) Class.forName(resolveInfo.activityInfo.name).newInstance()));
            MessageHandleService.a(this, new Intent(getApplicationContext(), MessageHandleService.class));
        } catch (Throwable th) {
            b.a(th);
        }
    }

    protected static void a(MiPushClientCallback miPushClientCallback) {
        synchronized (a) {
            if (!a.contains(miPushClientCallback)) {
                a.add(miPushClientCallback);
            }
        }
    }

    protected static boolean a(String str, String str2) {
        return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.equals(str, str2);
    }

    protected static void b(Context context, String str, long j, String str2, String str3) {
        synchronized (a) {
            for (MiPushClientCallback miPushClientCallback : a) {
                if (a(str, miPushClientCallback.getCategory())) {
                    miPushClientCallback.onUnsubscribeResult(j, str2, str3);
                }
            }
        }
    }

    public static boolean b() {
        return a.isEmpty();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onHandleIntent(android.content.Intent r8) {
        /*
            r7 = this;
            java.lang.String r0 = "com.xiaomi.mipush.sdk.WAKEUP"
            java.lang.String r1 = r8.getAction()     // Catch:{ Throwable -> 0x0083 }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x0083 }
            if (r0 == 0) goto L_0x004b
            com.xiaomi.mipush.sdk.c r0 = com.xiaomi.mipush.sdk.c.a(r7)     // Catch:{ Throwable -> 0x0083 }
            boolean r0 = r0.i()     // Catch:{ Throwable -> 0x0083 }
            if (r0 == 0) goto L_0x004a
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r7)     // Catch:{ Throwable -> 0x0083 }
            r0.a()     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r0 = "waker_pkgname"
            java.lang.String r0 = r8.getStringExtra(r0)     // Catch:{ Throwable -> 0x0083 }
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ Throwable -> 0x0083 }
            r1.<init>()     // Catch:{ Throwable -> 0x0083 }
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x0083 }
            if (r2 == 0) goto L_0x0033
            java.lang.String r2 = "wakerPkgName"
            r1.put(r2, r0)     // Catch:{ Throwable -> 0x0083 }
        L_0x0033:
            java.lang.String r0 = "selfPkgName"
            java.lang.String r2 = r7.getPackageName()     // Catch:{ Throwable -> 0x0083 }
            r1.put(r0, r2)     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r2 = "system_running_log"
            java.lang.String r3 = "wake_up_app"
            r4 = 1
            java.lang.String r6 = r1.toString()     // Catch:{ Throwable -> 0x0083 }
            r1 = r7
            com.xiaomi.push.service.ay.a(r1, r2, r3, r4, r6)     // Catch:{ Throwable -> 0x0083 }
        L_0x004a:
            return
        L_0x004b:
            java.lang.String r0 = "com.xiaomi.mipush.SEND_TINYDATA"
            java.lang.String r1 = r8.getAction()     // Catch:{ Throwable -> 0x0083 }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x0083 }
            if (r0 == 0) goto L_0x0088
            com.xiaomi.xmpush.thrift.e r0 = new com.xiaomi.xmpush.thrift.e     // Catch:{ Throwable -> 0x0083 }
            r0.<init>()     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r1 = "mipush_payload"
            byte[] r1 = r8.getByteArrayExtra(r1)     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.xmpush.thrift.ar.a(r0, r1)     // Catch:{ Throwable -> 0x0083 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0083 }
            r1.<init>()     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r2 = "PushMessageHandler.onHandleIntent "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r2 = r0.toString()     // Catch:{ Throwable -> 0x0083 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.channel.commonutils.logger.b.c(r1)     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.mipush.sdk.MiTinyDataClient.upload(r7, r0)     // Catch:{ Throwable -> 0x0083 }
            goto L_0x004a
        L_0x0083:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x004a
        L_0x0088:
            java.lang.String r0 = "com.xiaomi.mipush.sdk.HYBRID_NOTIFICATION_CLICK"
            java.lang.String r1 = r8.getAction()     // Catch:{ Throwable -> 0x0083 }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x0083 }
            if (r0 == 0) goto L_0x00b1
            java.lang.String r0 = "mipush_payload"
            java.io.Serializable r0 = r8.getSerializableExtra(r0)     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.mipush.sdk.MiPushMessage r0 = (com.xiaomi.mipush.sdk.MiPushMessage) r0     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r1 = "mipush_hybrid_app_pkg"
            java.lang.String r1 = r8.getStringExtra(r1)     // Catch:{ Throwable -> 0x0083 }
            android.content.Context r2 = r7.getApplicationContext()     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.mipush.sdk.MiPushClient.reportMessageClicked(r2, r0)     // Catch:{ Throwable -> 0x0083 }
            android.content.Context r2 = r7.getApplicationContext()     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.mipush.sdk.p.a(r2, r1, r0)     // Catch:{ Throwable -> 0x0083 }
            goto L_0x004a
        L_0x00b1:
            r0 = 1
            int r1 = com.xiaomi.mipush.sdk.PushMessageHelper.getPushMode(r7)     // Catch:{ Throwable -> 0x0083 }
            if (r0 != r1) goto L_0x00d3
            boolean r0 = b()     // Catch:{ Throwable -> 0x0083 }
            if (r0 == 0) goto L_0x00c4
            java.lang.String r0 = "receive a message before application calling initialize"
            com.xiaomi.channel.commonutils.logger.b.d(r0)     // Catch:{ Throwable -> 0x0083 }
            goto L_0x004a
        L_0x00c4:
            com.xiaomi.mipush.sdk.x r0 = com.xiaomi.mipush.sdk.x.a(r7)     // Catch:{ Throwable -> 0x0083 }
            com.xiaomi.mipush.sdk.PushMessageHandler$a r0 = r0.a(r8)     // Catch:{ Throwable -> 0x0083 }
            if (r0 == 0) goto L_0x004a
            a(r7, r0)     // Catch:{ Throwable -> 0x0083 }
            goto L_0x004a
        L_0x00d3:
            android.content.Intent r2 = new android.content.Intent     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r0 = "com.xiaomi.mipush.RECEIVE_MESSAGE"
            r2.<init>(r0)     // Catch:{ Throwable -> 0x0083 }
            java.lang.String r0 = r7.getPackageName()     // Catch:{ Throwable -> 0x0083 }
            r2.setPackage(r0)     // Catch:{ Throwable -> 0x0083 }
            r2.putExtras(r8)     // Catch:{ Throwable -> 0x0083 }
            android.content.pm.PackageManager r0 = r7.getPackageManager()     // Catch:{ Throwable -> 0x0083 }
            r1 = 32
            java.util.List r0 = r0.queryBroadcastReceivers(r2, r1)     // Catch:{ Exception -> 0x011a }
            r1 = 0
            if (r0 == 0) goto L_0x0127
            java.util.Iterator r3 = r0.iterator()     // Catch:{ Exception -> 0x011a }
        L_0x00f5:
            boolean r0 = r3.hasNext()     // Catch:{ Exception -> 0x011a }
            if (r0 == 0) goto L_0x0127
            java.lang.Object r0 = r3.next()     // Catch:{ Exception -> 0x011a }
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0     // Catch:{ Exception -> 0x011a }
            android.content.pm.ActivityInfo r4 = r0.activityInfo     // Catch:{ Exception -> 0x011a }
            if (r4 == 0) goto L_0x00f5
            android.content.pm.ActivityInfo r4 = r0.activityInfo     // Catch:{ Exception -> 0x011a }
            java.lang.String r4 = r4.packageName     // Catch:{ Exception -> 0x011a }
            java.lang.String r5 = r7.getPackageName()     // Catch:{ Exception -> 0x011a }
            boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x011a }
            if (r4 == 0) goto L_0x00f5
        L_0x0113:
            if (r0 == 0) goto L_0x0120
            r7.a(r2, r0)     // Catch:{ Exception -> 0x011a }
            goto L_0x004a
        L_0x011a:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)     // Catch:{ Throwable -> 0x0083 }
            goto L_0x004a
        L_0x0120:
            java.lang.String r0 = "cannot find the receiver to handler this message, check your manifest"
            com.xiaomi.channel.commonutils.logger.b.d(r0)     // Catch:{ Exception -> 0x011a }
            goto L_0x004a
        L_0x0127:
            r0 = r1
            goto L_0x0113
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.PushMessageHandler.onHandleIntent(android.content.Intent):void");
    }
}
