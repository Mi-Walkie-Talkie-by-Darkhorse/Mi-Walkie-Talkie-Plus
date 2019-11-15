package com.mi.mimsgsdk.stat;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.controller.MessageController;
import com.mi.mimsgsdk.stat.model.AgoraLog;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import com.mi.mimsgsdk.stat.model.CommonLog;
import com.mi.mimsgsdk.stat.storage.StatDao;
import com.mi.mimsgsdk.stat.storage.StatDao.StatEntity;
import com.mi.mimsgsdk.utils.Network;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import rx.a;
import rx.a.C0098a;
import rx.e;

public class StatWorker {
    /* access modifiers changed from: private */
    public static final String TAG = StatWorker.class.getSimpleName();
    private ScheduledExecutorService mExecutorService;

    private static class ResendTask implements Runnable {
        private static final int MAX_RETRY_TIMES = 3;
        private static final long RETRY_INTERVAL_TIME = TimeUnit.MINUTES.toMillis(15);

        private ResendTask() {
        }

        public void run() {
            ClientLog.w(StatWorker.TAG, "scheduled send scribe start");
            for (StatEntity statEntity : StatDao.getInstance().getFailedRows(3, RETRY_INTERVAL_TIME)) {
                StatWorker.parseJsonAndSend(statEntity.getJsonData(), statEntity.getId());
            }
            ClientLog.w(StatWorker.TAG, "scheduled send scribe end");
        }
    }

    private static class StatisticWorkerHolder {
        public static StatWorker holder = new StatWorker();

        private StatisticWorkerHolder() {
        }
    }

    public static StatWorker getInstance() {
        return StatisticWorkerHolder.holder;
    }

    private StatWorker() {
        this.mExecutorService = Executors.newSingleThreadScheduledExecutor();
        this.mExecutorService.scheduleWithFixedDelay(new ResendTask(), 0, 15, TimeUnit.MINUTES);
    }

    public static void parseJsonAndSend(String str, int i) {
        if (!Network.hasNetwork(Global.getApplicationContext())) {
            ClientLog.w(TAG, "has not network skip");
        } else if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int optInt = jSONObject.optInt(Key.LOG_TYPE);
                switch (optInt) {
                    case 1:
                        ClientLog.d(TAG, "parseJsonAndSend json: " + str);
                        AgoraLog agoraLog = new AgoraLog();
                        agoraLog.fromJsonObject(jSONObject);
                        PacketData reqPacketData = agoraLog.toReqPacketData();
                        if (reqPacketData != null) {
                            sendScribe(reqPacketData, optInt, i);
                            return;
                        } else {
                            StatDao.getInstance().remove(i);
                            return;
                        }
                    case 2:
                        CommonLog commonLog = new CommonLog();
                        commonLog.fromJsonObject(jSONObject);
                        PacketData reqPacketData2 = commonLog.toReqPacketData();
                        if (reqPacketData2 != null) {
                            sendScribe(reqPacketData2, optInt, i);
                            return;
                        } else {
                            StatDao.getInstance().remove(i);
                            return;
                        }
                    default:
                        ClientLog.e(TAG, "unrecognized scribe type:" + optInt + ", will delete it from DB");
                        StatDao.getInstance().remove(i);
                        return;
                }
            } catch (JSONException e) {
                ClientLog.e(TAG, "meet json error, will delete it from DB", e);
                StatDao.getInstance().remove(i);
            }
            ClientLog.e(TAG, "meet json error, will delete it from DB", e);
            StatDao.getInstance().remove(i);
        } else {
            ClientLog.e(TAG, "json is empty, will delete it from DB");
            StatDao.getInstance().remove(i);
        }
    }

    private static void sendScribe(@NonNull final PacketData packetData, final int i, final int i2) {
        a.a((C0098a<T>) new C0098a<Void>() {
            public void call(e<? super Void> eVar) {
                int scribe = MessageController.getInstance().scribe(packetData, i);
                StatDao instance = StatDao.getInstance();
                if (scribe == 0) {
                    instance.remove(i2);
                } else {
                    ClientLog.w(StatWorker.TAG, "send scribe fail, rowId:" + i2 + ", code:" + scribe);
                    if (scribe != -1) {
                        instance.addRetryTimes(i2);
                    }
                }
                eVar.onNext(null);
                eVar.onCompleted();
            }
        }).b(rx.e.e.b()).b((e<? super T>) new e<Object>() {
            public void onCompleted() {
                ClientLog.i(StatWorker.TAG, "try send scribe ok");
            }

            public void onError(Throwable th) {
                ClientLog.e(StatWorker.TAG, "try send scribe fail, rowId:" + i2, th);
            }

            public void onNext(Object obj) {
            }
        });
    }
}
