package com.mi.milinkforgame.sdk.debug;

import android.os.Message;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.base.CustomHandlerThread;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.info.NetworkDash;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public abstract class BaseDataMonitor extends CustomHandlerThread {
    public static final int RET_CODE_ABANDONED_SESSION_NOT_READY = 4;
    public static final int RET_CODE_OK = 0;
    public static final int RET_CODE_PING_TIME_OUT = 3;
    public static final int RET_CODE_TIME_OUT = 1;
    public static final int RET_CODE_TOKEN_EXPIRED = 2;
    protected final ConcurrentHashMap<String, List<MonitorItem>> mMonitorItemMap = new ConcurrentHashMap<>();
    protected final UploadStasticDataTimer mTimer = new UploadStasticDataTimer();
    protected long mUploadInterval = 0;

    public static class MonitorItem implements Serializable {
        private static final long serialVersionUID = -5333015815983866181L;
        public String accip = "";
        public String apn = "";
        public String apnType = "";
        public String clientIp = "";
        public String clientIsp = "";
        public String cmd;
        public int errorCode = 0;
        public boolean isSuccess = false;
        public int port = 0;
        public long seq = 0;
        public long waste = 0;
    }

    protected final class UploadStasticDataTimer extends CustomHandlerThread {
        private static final int MESSAGE_UPLOAD_DATA = 1;
        private static final String TAG = "UploadStasticDataTimer";

        public UploadStasticDataTimer() {
            super(TAG);
        }

        public void removeMessageUploadData() {
            removeMessage(1);
        }

        public void sendMessageUploadDataDelayed(long j) {
            Message obtainMessage = obtainMessage();
            obtainMessage.what = 1;
            sendMessageDelayed(obtainMessage, j);
        }

        /* access modifiers changed from: protected */
        public void processMessage(Message message) {
            switch (message.what) {
                case 1:
                    BaseDataMonitor.this.doPostData();
                    sendMessageUploadDataDelayed(BaseDataMonitor.this.mUploadInterval);
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void doPostData();

    /* access modifiers changed from: protected */
    public abstract String toJson(ConcurrentHashMap<String, List<MonitorItem>> concurrentHashMap);

    protected BaseDataMonitor(String str) {
        super(str);
    }

    /* access modifiers changed from: protected */
    public void processMessage(Message message) {
    }

    public void addMonitorItem(MonitorItem monitorItem) {
        List arrayList;
        if (monitorItem != null) {
            String str = monitorItem.cmd;
            if (this.mMonitorItemMap.containsKey(str)) {
                arrayList = (List) this.mMonitorItemMap.get(str);
            } else {
                arrayList = new ArrayList();
                this.mMonitorItemMap.put(str, arrayList);
            }
            arrayList.add(monitorItem);
        }
    }

    public void trace(String str, int i, String str2, int i2, long j, long j2, int i3, int i4, int i5) {
        trace(Const.TRACE_AC_VALUE, str, i, str2, i2, j, j2, i3, i4, i5, MiAccountManager.getInstance().getUserId());
    }

    public void trace(String str, String str2, int i, String str3, int i2, long j, long j2, int i3, int i4, int i5, String str4) {
        if (this.mHandler != null) {
            final String str5 = str;
            final String str6 = str2;
            final int i6 = i;
            final String str7 = str3;
            final int i7 = i2;
            final long j3 = j;
            final long j4 = j2;
            final int i8 = i3;
            final int i9 = i4;
            final int i10 = i5;
            final String str8 = str4;
            this.mHandler.post(new Runnable() {
                public void run() {
                    BaseDataMonitor.this.traceToServer(str5, str6, i6, str7, i7, j3, j4, i8, i9, i10, str8, Global.getClientIp(), Global.getClientIsp());
                }
            });
        }
    }

    public void trace(String str, int i, String str2, int i2, long j, long j2, int i3, int i4, int i5, String str3, String str4) {
        trace(Const.TRACE_AC_VALUE, str, i, str2, i2, j, j2, i3, i4, i5, MiAccountManager.getInstance().getUserId(), str3, str4);
    }

    public void trace(String str, String str2, int i, String str3, int i2, long j, long j2, int i3, int i4, int i5, String str4, String str5, String str6) {
        if (this.mHandler != null) {
            final String str7 = str;
            final String str8 = str2;
            final int i6 = i;
            final String str9 = str3;
            final int i7 = i2;
            final long j3 = j;
            final long j4 = j2;
            final int i8 = i3;
            final int i9 = i4;
            final int i10 = i5;
            final String str10 = str4;
            final String str11 = str5;
            final String str12 = str6;
            this.mHandler.post(new Runnable() {
                public void run() {
                    BaseDataMonitor.this.traceToServer(str7, str8, i6, str9, i7, j3, j4, i8, i9, i10, str10, str11, str12);
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void traceToServer(String str, String str2, int i, String str3, int i2, long j, long j2, int i3, int i4, int i5, String str4, String str5, String str6) {
        MonitorItem monitorItem = new MonitorItem();
        monitorItem.cmd = str3;
        monitorItem.waste = j2 - j;
        monitorItem.isSuccess = i2 == 0;
        monitorItem.errorCode = i2;
        monitorItem.accip = str2 != null ? str2.trim() : "";
        monitorItem.apn = NetworkDash.getApnName();
        monitorItem.apnType = String.valueOf(NetworkDash.getApnType());
        monitorItem.port = i;
        monitorItem.seq = (long) i5;
        if (MnsCmd.MNS_HAND_SHAKE.equals(monitorItem.cmd)) {
            monitorItem.clientIp = str5;
            monitorItem.clientIsp = str6;
        }
        addMonitorItem(monitorItem);
    }

    public void setUploadInterval(int i) {
        if (this.mUploadInterval != ((long) i)) {
            this.mUploadInterval = (long) i;
            this.mTimer.removeMessageUploadData();
            this.mTimer.sendMessageUploadDataDelayed(this.mUploadInterval);
        }
    }
}
