package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.xiaomi.push.ii;
import com.xiaomi.push.iy;
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

    public static MiPushMessage generateMessage(iy iyVar, ii iiVar, boolean z) {
        MiPushMessage miPushMessage = new MiPushMessage();
        miPushMessage.setMessageId(iyVar.m467a());
        if (!TextUtils.isEmpty(iyVar.d())) {
            miPushMessage.setMessageType(1);
            miPushMessage.setAlias(iyVar.d());
        } else if (!TextUtils.isEmpty(iyVar.c())) {
            miPushMessage.setMessageType(2);
            miPushMessage.setTopic(iyVar.c());
        } else if (!TextUtils.isEmpty(iyVar.f())) {
            miPushMessage.setMessageType(3);
            miPushMessage.setUserAccount(iyVar.f());
        } else {
            miPushMessage.setMessageType(0);
        }
        miPushMessage.setCategory(iyVar.e());
        if (iyVar.a() != null) {
            miPushMessage.setContent(iyVar.a().c());
        }
        if (iiVar != null) {
            if (TextUtils.isEmpty(miPushMessage.getMessageId())) {
                miPushMessage.setMessageId(iiVar.m396a());
            }
            if (TextUtils.isEmpty(miPushMessage.getTopic())) {
                miPushMessage.setTopic(iiVar.m401b());
            }
            miPushMessage.setDescription(iiVar.d());
            miPushMessage.setTitle(iiVar.m404c());
            miPushMessage.setNotifyType(iiVar.a());
            miPushMessage.setNotifyId(iiVar.c());
            miPushMessage.setPassThrough(iiVar.b());
            miPushMessage.setExtra(iiVar.m397a());
        }
        miPushMessage.setNotified(z);
        return miPushMessage;
    }

    public static ii generateMessage(MiPushMessage miPushMessage) {
        ii iiVar = new ii();
        iiVar.a(miPushMessage.getMessageId());
        iiVar.b(miPushMessage.getTopic());
        iiVar.d(miPushMessage.getDescription());
        iiVar.c(miPushMessage.getTitle());
        iiVar.c(miPushMessage.getNotifyId());
        iiVar.a(miPushMessage.getNotifyType());
        iiVar.b(miPushMessage.getPassThrough());
        iiVar.a(miPushMessage.getExtra());
        return iiVar;
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
