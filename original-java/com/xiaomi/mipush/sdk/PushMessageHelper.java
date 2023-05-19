package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6267iy;
import java.util.List;

/* loaded from: classes2.dex */
public class PushMessageHelper {
    public static final String ERROR_MESSAGE = "error_message";
    public static final String ERROR_TYPE = "error_type";
    public static final String ERROR_TYPE_NEED_PERMISSION = "error_lack_of_permission";
    public static final String KEY_COMMAND = "key_command";
    public static final String KEY_MESSAGE = "key_message";
    public static final int MESSAGE_COMMAND = 3;
    public static final int MESSAGE_ERROR = 5;
    public static final int MESSAGE_QUIT = 4;
    public static final int MESSAGE_RAW = 1;
    public static final int MESSAGE_SENDMESSAGE = 2;
    public static final String MESSAGE_TYPE = "message_type";
    public static final int PUSH_MODE_BROADCAST = 2;
    public static final int PUSH_MODE_CALLBACK = 1;
    private static int pushMode;

    public static MiPushCommandMessage generateCommandMessage(String str, List<String> list, long j, String str2, String str3) {
        MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
        miPushCommandMessage.setCommand(str);
        miPushCommandMessage.setCommandArguments(list);
        miPushCommandMessage.setResultCode(j);
        miPushCommandMessage.setReason(str2);
        miPushCommandMessage.setCategory(str3);
        return miPushCommandMessage;
    }

    public static MiPushMessage generateMessage(C6267iy c6267iy, C6251ii c6251ii, boolean z) {
        MiPushMessage miPushMessage = new MiPushMessage();
        miPushMessage.setMessageId(c6267iy.m2063a());
        if (!TextUtils.isEmpty(c6267iy.m2053d())) {
            miPushMessage.setMessageType(1);
            miPushMessage.setAlias(c6267iy.m2053d());
        } else if (!TextUtils.isEmpty(c6267iy.m2055c())) {
            miPushMessage.setMessageType(2);
            miPushMessage.setTopic(c6267iy.m2055c());
        } else if (TextUtils.isEmpty(c6267iy.m2049f())) {
            miPushMessage.setMessageType(0);
        } else {
            miPushMessage.setMessageType(3);
            miPushMessage.setUserAccount(c6267iy.m2049f());
        }
        miPushMessage.setCategory(c6267iy.m2051e());
        if (c6267iy.m2064a() != null) {
            miPushMessage.setContent(c6267iy.m2064a().m2424c());
        }
        if (c6251ii != null) {
            if (TextUtils.isEmpty(miPushMessage.getMessageId())) {
                miPushMessage.setMessageId(c6251ii.m2402a());
            }
            if (TextUtils.isEmpty(miPushMessage.getTopic())) {
                miPushMessage.setTopic(c6251ii.m2390b());
            }
            miPushMessage.setDescription(c6251ii.m2377d());
            miPushMessage.setTitle(c6251ii.m2382c());
            miPushMessage.setNotifyType(c6251ii.m2405a());
            miPushMessage.setNotifyId(c6251ii.m2383c());
            miPushMessage.setPassThrough(c6251ii.m2391b());
            miPushMessage.setExtra(c6251ii.m2401a());
        }
        miPushMessage.setNotified(z);
        return miPushMessage;
    }

    public static C6251ii generateMessage(MiPushMessage miPushMessage) {
        C6251ii c6251ii = new C6251ii();
        c6251ii.m2395a(miPushMessage.getMessageId());
        c6251ii.m2386b(miPushMessage.getTopic());
        c6251ii.m2375d(miPushMessage.getDescription());
        c6251ii.m2379c(miPushMessage.getTitle());
        c6251ii.m2380c(miPushMessage.getNotifyId());
        c6251ii.m2398a(miPushMessage.getNotifyType());
        c6251ii.m2387b(miPushMessage.getPassThrough());
        c6251ii.m2393a(miPushMessage.getExtra());
        return c6251ii;
    }

    public static int getPushMode(Context context) {
        if (pushMode == 0) {
            setPushMode(isUseCallbackPushMode(context) ? 1 : 2);
        }
        return pushMode;
    }

    private static boolean isIntentAvailable(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (queryBroadcastReceivers != null) {
                if (!queryBroadcastReceivers.isEmpty()) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean isUseCallbackPushMode(Context context) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setClassName(context.getPackageName(), "com.xiaomi.mipush.sdk.PushServiceReceiver");
        return isIntentAvailable(context, intent);
    }

    public static void sendCommandMessageBroadcast(Context context, MiPushCommandMessage miPushCommandMessage) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(context.getPackageName());
        intent.putExtra(MESSAGE_TYPE, 3);
        intent.putExtra(KEY_COMMAND, miPushCommandMessage);
        new PushServiceReceiver().onReceive(context, intent);
    }

    public static void sendQuitMessageBroadcast(Context context) {
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(context.getPackageName());
        intent.putExtra(MESSAGE_TYPE, 4);
        new PushServiceReceiver().onReceive(context, intent);
    }

    private static void setPushMode(int i) {
        pushMode = i;
    }
}
