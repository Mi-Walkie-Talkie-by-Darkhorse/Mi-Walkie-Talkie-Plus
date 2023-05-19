package com.ifengyu.intercom.receiver;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.login.LoginActivity;
import com.tencent.open.SocialConstants;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class FengyuMessageReceiver extends PushMessageReceiver {
    private static final String TAG = FengyuMessageReceiver.class.getSimpleName();
    private static final String TYPE_MESSAGE = "message";
    private String mAlias;
    private String mCommand;
    private String mEndTime;
    private String mMessage;
    private String mReason;
    private String mRegId;
    private long mResultCode = -1;
    private String mStartTime;
    private String mTopic;
    private String mUserAccount;

    private void handleMessageClicked(Context context, MiPushMessage miPushMessage) {
        boolean z = !TextUtils.isEmpty(MiTalkClientUtil.m11243P());
        Map<String, String> extra = miPushMessage.getExtra();
        String str = null;
        if (extra != null && extra.size() > 0) {
            str = extra.get(SocialConstants.PARAM_URL);
        }
        if (!TextUtils.isEmpty(str)) {
            Bundle bundle = new Bundle();
            bundle.putString(SocialConstants.PARAM_URL, str);
            if (z) {
                Intent intent = new Intent(context, WebViewActivity.class);
                intent.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                intent.putExtras(bundle);
                if (isAppForeground(context.getApplicationContext())) {
                    intent.setFlags(268435456);
                    context.startActivity(intent);
                    return;
                }
                Intent intent2 = new Intent(context, MainActivity.class);
                intent2.setFlags(268468224);
                context.startActivities(new Intent[]{intent2, intent});
                return;
            } else if (isAppForeground(context.getApplicationContext())) {
                Intent m9767N = LoginActivity.m9767N(context);
                m9767N.setFlags(268468224);
                m9767N.putExtras(bundle);
                context.startActivity(m9767N);
                return;
            } else {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                launchIntentForPackage.setFlags(270532608);
                launchIntentForPackage.putExtras(bundle);
                context.startActivity(launchIntentForPackage);
                return;
            }
        }
        Intent launchIntentForPackage2 = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        launchIntentForPackage2.setFlags(270532608);
        context.startActivity(launchIntentForPackage2);
    }

    public static boolean isAppForeground(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    return runningAppProcessInfo.processName.equals(context.getPackageName());
                }
            }
        }
        return false;
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onCommandResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        String command = miPushCommandMessage.getCommand();
        String str = TAG;
        C4161y.m11054a(str, "onCommandResult:" + miPushCommandMessage.toString());
        List<String> commandArguments = miPushCommandMessage.getCommandArguments();
        String str2 = null;
        String str3 = (commandArguments == null || commandArguments.size() <= 0) ? null : commandArguments.get(0);
        if (commandArguments != null && commandArguments.size() > 1) {
            str2 = commandArguments.get(1);
        }
        if (MiPushClient.COMMAND_REGISTER.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mRegId = str3;
            }
        } else if (MiPushClient.COMMAND_SET_ALIAS.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mAlias = str3;
            }
        } else if (MiPushClient.COMMAND_UNSET_ALIAS.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mAlias = str3;
            }
        } else if (MiPushClient.COMMAND_SUBSCRIBE_TOPIC.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mTopic = str3;
            }
        } else if (MiPushClient.COMMAND_UNSUBSCRIBE_TOPIC.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mTopic = str3;
            }
        } else if (MiPushClient.COMMAND_SET_ACCEPT_TIME.equals(command) && miPushCommandMessage.getResultCode() == 0) {
            this.mStartTime = str3;
            this.mEndTime = str2;
        }
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onNotificationMessageArrived(Context context, MiPushMessage miPushMessage) {
        this.mMessage = miPushMessage.getContent();
        String str = TAG;
        C4161y.m11054a(str, "onNotificationMessageArrived:" + miPushMessage.toString());
        if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
            this.mTopic = miPushMessage.getTopic();
        } else if (!TextUtils.isEmpty(miPushMessage.getAlias())) {
            this.mAlias = miPushMessage.getAlias();
        } else if (TextUtils.isEmpty(miPushMessage.getUserAccount())) {
        } else {
            this.mUserAccount = miPushMessage.getUserAccount();
        }
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onNotificationMessageClicked(Context context, MiPushMessage miPushMessage) {
        this.mMessage = miPushMessage.getContent();
        String str = TAG;
        C4161y.m11054a(str, "onNotificationMessageClicked:" + miPushMessage.toString());
        if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
            this.mTopic = miPushMessage.getTopic();
        } else if (!TextUtils.isEmpty(miPushMessage.getAlias())) {
            this.mAlias = miPushMessage.getAlias();
        } else if (!TextUtils.isEmpty(miPushMessage.getUserAccount())) {
            this.mUserAccount = miPushMessage.getUserAccount();
        }
        handleMessageClicked(context, miPushMessage);
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onReceivePassThroughMessage(Context context, MiPushMessage miPushMessage) {
        this.mMessage = miPushMessage.getContent();
        String str = TAG;
        C4161y.m11054a(str, "onReceivePassThroughMessage:" + miPushMessage.toString());
        if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
            this.mTopic = miPushMessage.getTopic();
        } else if (!TextUtils.isEmpty(miPushMessage.getAlias())) {
            this.mAlias = miPushMessage.getAlias();
        } else if (TextUtils.isEmpty(miPushMessage.getUserAccount())) {
        } else {
            this.mUserAccount = miPushMessage.getUserAccount();
        }
    }

    @Override // com.xiaomi.mipush.sdk.PushMessageReceiver
    public void onReceiveRegisterResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        String command = miPushCommandMessage.getCommand();
        String str = TAG;
        C4161y.m11054a(str, "onReceiveRegisterResult:" + miPushCommandMessage.toString());
        List<String> commandArguments = miPushCommandMessage.getCommandArguments();
        String str2 = (commandArguments == null || commandArguments.size() <= 0) ? null : commandArguments.get(0);
        if (commandArguments != null && commandArguments.size() > 1) {
            commandArguments.get(1);
        }
        if (MiPushClient.COMMAND_REGISTER.equals(command) && miPushCommandMessage.getResultCode() == 0) {
            this.mRegId = str2;
            String m11243P = MiTalkClientUtil.m11243P();
            if (TextUtils.isEmpty(m11243P)) {
                return;
            }
            MiPushClient.setAlias(context, m11243P, null);
            MiPushClient.setUserAccount(context.getApplicationContext(), m11243P, null);
            try {
                MiPushClient.subscribe(context.getApplicationContext(), context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName, null);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
    }
}
