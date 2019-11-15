package com.ifengyu.intercom.receiver;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.LoginActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;
import java.util.List;
import java.util.Map;

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

    public void onReceivePassThroughMessage(Context context, MiPushMessage miPushMessage) {
        this.mMessage = miPushMessage.getContent();
        s.b(TAG, "onReceivePassThroughMessage:" + miPushMessage.toString());
        if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
            this.mTopic = miPushMessage.getTopic();
        } else if (!TextUtils.isEmpty(miPushMessage.getAlias())) {
            this.mAlias = miPushMessage.getAlias();
        } else if (!TextUtils.isEmpty(miPushMessage.getUserAccount())) {
            this.mUserAccount = miPushMessage.getUserAccount();
        }
    }

    public void onNotificationMessageClicked(Context context, MiPushMessage miPushMessage) {
        this.mMessage = miPushMessage.getContent();
        s.b(TAG, "onNotificationMessageClicked:" + miPushMessage.toString());
        if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
            this.mTopic = miPushMessage.getTopic();
        } else if (!TextUtils.isEmpty(miPushMessage.getAlias())) {
            this.mAlias = miPushMessage.getAlias();
        } else if (!TextUtils.isEmpty(miPushMessage.getUserAccount())) {
            this.mUserAccount = miPushMessage.getUserAccount();
        }
        handleMessageClicked(context, miPushMessage);
    }

    private void handleMessageClicked(Context context, MiPushMessage miPushMessage) {
        String str = null;
        boolean z = !TextUtils.isEmpty(context.getSharedPreferences("sp_user", 0).getString("username", null));
        Map extra = miPushMessage.getExtra();
        if (extra != null && extra.size() > 0) {
            str = (String) extra.get("url");
        }
        if (!TextUtils.isEmpty(str)) {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
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
            } else if (isAppForeground(context.getApplicationContext())) {
                Intent intent3 = new Intent(context, LoginActivity.class);
                intent3.setFlags(268468224);
                intent3.putExtras(bundle);
                context.startActivity(intent3);
            } else {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                launchIntentForPackage.setFlags(270532608);
                launchIntentForPackage.putExtras(bundle);
                context.startActivity(launchIntentForPackage);
            }
        } else {
            Intent launchIntentForPackage2 = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            launchIntentForPackage2.setFlags(270532608);
            context.startActivity(launchIntentForPackage2);
        }
    }

    public void onNotificationMessageArrived(Context context, MiPushMessage miPushMessage) {
        this.mMessage = miPushMessage.getContent();
        s.b(TAG, "onNotificationMessageArrived:" + miPushMessage.toString());
        if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
            this.mTopic = miPushMessage.getTopic();
        } else if (!TextUtils.isEmpty(miPushMessage.getAlias())) {
            this.mAlias = miPushMessage.getAlias();
        } else if (!TextUtils.isEmpty(miPushMessage.getUserAccount())) {
            this.mUserAccount = miPushMessage.getUserAccount();
        }
    }

    public void onCommandResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        String str;
        String command = miPushCommandMessage.getCommand();
        s.b(TAG, "onCommandResult:" + miPushCommandMessage.toString());
        List commandArguments = miPushCommandMessage.getCommandArguments();
        String str2 = (commandArguments == null || commandArguments.size() <= 0) ? null : (String) commandArguments.get(0);
        if (commandArguments == null || commandArguments.size() <= 1) {
            str = null;
        } else {
            str = (String) commandArguments.get(1);
        }
        if (MiPushClient.COMMAND_REGISTER.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mRegId = str2;
            }
        } else if (MiPushClient.COMMAND_SET_ALIAS.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mAlias = str2;
            }
        } else if (MiPushClient.COMMAND_UNSET_ALIAS.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mAlias = str2;
            }
        } else if (MiPushClient.COMMAND_SUBSCRIBE_TOPIC.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mTopic = str2;
            }
        } else if (MiPushClient.COMMAND_UNSUBSCRIBE_TOPIC.equals(command)) {
            if (miPushCommandMessage.getResultCode() == 0) {
                this.mTopic = str2;
            }
        } else if (MiPushClient.COMMAND_SET_ACCEPT_TIME.equals(command) && miPushCommandMessage.getResultCode() == 0) {
            this.mStartTime = str2;
            this.mEndTime = str;
        }
    }

    public void onReceiveRegisterResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        String command = miPushCommandMessage.getCommand();
        s.b(TAG, "onReceiveRegisterResult:" + miPushCommandMessage.toString());
        List commandArguments = miPushCommandMessage.getCommandArguments();
        String str = (commandArguments == null || commandArguments.size() <= 0) ? null : (String) commandArguments.get(0);
        if (commandArguments != null && commandArguments.size() > 1) {
            String str2 = (String) commandArguments.get(1);
        }
        if (MiPushClient.COMMAND_REGISTER.equals(command) && miPushCommandMessage.getResultCode() == 0) {
            this.mRegId = str;
            String K = w.K();
            if (!TextUtils.isEmpty(K)) {
                MiPushClient.setAlias(context, K, null);
                MiPushClient.setUserAccount(context.getApplicationContext(), K, null);
                try {
                    MiPushClient.subscribe(context.getApplicationContext(), context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName, null);
                } catch (NameNotFoundException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        }
    }

    public static boolean isAppForeground(Context context) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.size() == 0) {
            return false;
        }
        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100) {
                return runningAppProcessInfo.processName.equals(context.getPackageName());
            }
        }
        return false;
    }
}
