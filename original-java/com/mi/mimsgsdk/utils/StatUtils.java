package com.mi.mimsgsdk.utils;

import android.os.RemoteException;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.InitParams;
import com.mi.mimsgsdk.MsgSdkManager;
import com.mi.mimsgsdk.proto.Statis.ActionLogItem;
import com.mi.mimsgsdk.proto.Statis.ActionLogReq;
import com.mi.mimsgsdk.proto.Statis.Platform;
import com.mi.mimsgsdk.service.SendListener;
import com.mi.mimsgsdk.service.aidl.MsgPacketData;
import java.util.MissingFormatArgumentException;
import rx.a;
import rx.a.C0098a;
import rx.e;

public class StatUtils {
    public static final String AC_MIXUN_CODE_TEXT = "mixun_sdk_talk-send-code-%d-%d-%d-uid-%s-appid-%s";
    public static final String AC_MIXUN_TEXT = "mixun_sdk_talk-send-%d-%d-uid-%s-appid-%s";
    public static final int FAST_DOUBLE_OCCURRED_INTERVAL = 5000;
    public static final String KEY_AGORA_MIXUN_SDK_VOIP_ENTER = "agora-mixun_sdk_voip-enter-uid-%s-appid-%s";
    public static final String KEY_AGORA_MIXUN_SDK_VOIP_ENTER_CODE = "agora-mixun_sdk_voip-enter-code-%d-uid-%s-appid-%s";
    public static final String KEY_AGORA_MIXUN_SDK_VOIP_LAUNCH = "agora-mixun_sdk_voip-launch-uid-%s-appid-%s";
    public static final String KEY_AGORA_MIXUN_SDK_VOIP_LAUNCH_FAIL = "agora-mixun_sdk_voip-launch-failed-uid-%s-appid-%s";
    public static final String KEY_AGORA_MIXUN_SDK_VOIP_LEAVE = "agora-mixun_sdk_voip-leave-uid-%s-appid-%s";
    public static final String KEY_AGORA_MIXUN_SDK_VOIP_LEAVE_CODE = "agora-mixun_sdk_voip-leave-code-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_MSG_INIT = "mixun_sdk_init-uid-%s-appid-%s";
    public static final String KEY_MIXUN_MSG_INIT_CODE = "mixun_sdk_init_code-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_SDK_DOWN = "mixun_sdk_download-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_SDK_DOWN_CODE = "mixun_sdk_download-code-%d-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_SDK_QUA = "agora-mixun_sdk_voip-quality-%d-delay-%d-lost-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_SDK_UPLOAD = "mixun_sdk_upload-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_SDK_UPLOAD_CODE = "mixun_sdk_upload-code-%d-%d-uid-%s-appid-%s";
    public static final String KEY_MIXUN_VOIP_TIME = "agora-mixun_sdk_voip-time-%d-uid-%s-appid-%s";
    private static final String STATISTIC_CMD = "appData.recommend.actionLog";
    /* access modifiers changed from: private */
    public static String TAG = StatUtils.class.getSimpleName();
    private static StatUtils instance = new StatUtils();
    private static long sLastOccurredTime = 0;

    private StatUtils() {
    }

    public static StatUtils getInstance() {
        return instance;
    }

    public static void statis(final LogType logType, final String str) {
        a.a((C0098a<T>) new C0098a<Object>() {
            public void call(e<? super Object> eVar) {
                ActionLogReq build = ActionLogReq.newBuilder().addItems(ActionLogItem.newBuilder().setBizType(2).setLogType(logType.ordinal()).setPlatform(Platform.ANDROID).setDate(System.currentTimeMillis()).setExtStr(str).build()).build();
                ClientLog.v(StatUtils.TAG, "pullOldGroupMessage request=" + build.toString());
                MsgPacketData msgPacketData = new MsgPacketData();
                msgPacketData.setCommand(StatUtils.STATISTIC_CMD);
                msgPacketData.setData(build.toByteArray());
                StatUtils.sendAsync(msgPacketData);
            }
        }).b(rx.e.e.b()).b((e<? super T>) new e<Object>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                ClientLog.e(StatUtils.TAG, "trace failed: " + th);
            }

            public void onNext(Object obj) {
            }
        });
    }

    /* access modifiers changed from: private */
    public static void sendAsync(MsgPacketData msgPacketData) {
        MsgSdkManager.getInstance().sendAsync(msgPacketData, 5000, new SendListener() {
            public void onRsponse(MsgPacketData msgPacketData) throws RemoteException {
                ClientLog.d(StatUtils.TAG, "trace success retcode :" + msgPacketData.getMnsCode());
            }

            public void onFailed(int i, String str) throws RemoteException {
                ClientLog.d(StatUtils.TAG, "trace failed retcode :" + i);
            }
        });
    }

    public static void addToMiLinkMonitor(LogType logType, String str, String str2, long... jArr) {
        String str3;
        String format;
        if (MsgSdkManager.getInstance() != null) {
            InitParams initParams = MsgSdkManager.getInstance().getInitParams();
            str3 = initParams == null ? "" : initParams.getAppId();
        } else {
            str3 = "";
        }
        if (!TextUtils.isEmpty(str3) && Network.hasNetwork(GlobalData.app())) {
            try {
                switch (jArr.length) {
                    case 0:
                        format = String.format(str, new Object[]{str2, str3});
                        break;
                    case 1:
                        format = String.format(str, new Object[]{Long.valueOf(jArr[0]), str2, str3});
                        break;
                    case 2:
                        format = String.format(str, new Object[]{Long.valueOf(jArr[0]), Long.valueOf(jArr[1]), str2, str3});
                        break;
                    case 3:
                        format = String.format(str, new Object[]{Long.valueOf(jArr[0]), Long.valueOf(jArr[1]), Long.valueOf(jArr[2]), str2, str3});
                        break;
                    case 4:
                        format = String.format(str, new Object[]{Long.valueOf(jArr[0]), Long.valueOf(jArr[1]), Long.valueOf(jArr[2]), Long.valueOf(jArr[3]), str2, str3});
                        break;
                    default:
                        throw new MissingFormatArgumentException("Format specifier: d,参数不够");
                }
                statis(logType, format);
                ClientLog.d(TAG, "trace try logType :" + logType.name() + "key: " + format);
            } catch (Throwable th) {
                ClientLog.e(TAG, "trace fail", th);
            }
        }
    }

    public static boolean isFastDoubleOccurred() {
        return isFastDoubleOccurred(5000);
    }

    public static boolean isFastDoubleOccurred(long j) {
        if (j <= 0) {
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = currentTimeMillis - sLastOccurredTime;
        if (j2 > 0 && j2 < j) {
            return true;
        }
        sLastOccurredTime = currentTimeMillis;
        return false;
    }

    public static void addStatisticsItem(int i, int i2, int i3, String str) {
        ClientLog.d(TAG, "addStatisticsItem,channel :" + i + ",bodyType = " + i2 + ",errorCode :" + i3);
        addToMiLinkMonitor(LogType.msg, AC_MIXUN_CODE_TEXT, str, (long) i3, (long) i, (long) i2);
    }

    public static void addStatisticsItem(int i, int i2, String str) {
        ClientLog.d(TAG, "addStatisticsItem,channel :" + i + ",bodyType = " + i2 + ",errorCode : null");
        addToMiLinkMonitor(LogType.msg, AC_MIXUN_TEXT, str, (long) i, (long) i2);
    }
}
