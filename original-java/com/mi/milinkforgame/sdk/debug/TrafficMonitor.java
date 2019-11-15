package com.mi.milinkforgame.sdk.debug;

import android.text.TextUtils;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.io.Serializable;
import java.util.Date;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

public class TrafficMonitor {
    private static final String TAG = "TrafficMonitor";
    private static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private static TrafficMonitor sInstance = new TrafficMonitor();
    private volatile boolean mIsStarted = false;
    private final ConcurrentHashMap<String, TrafficMonitorItem> mMonitorItemMap = new ConcurrentHashMap<>(32);
    private volatile long mStartTime;

    static class TrafficMonitorItem implements Serializable {
        private static final long serialVersionUID = -1887022887439235063L;
        public int count;
        public int totalSize;

        TrafficMonitorItem() {
        }
    }

    private TrafficMonitor() {
    }

    public static TrafficMonitor getInstance() {
        return sInstance;
    }

    public void resume() {
        this.mIsStarted = true;
    }

    public void pause() {
        this.mIsStarted = false;
    }

    public void start() {
        this.mStartTime = System.currentTimeMillis();
        this.mMonitorItemMap.clear();
        this.mIsStarted = true;
    }

    public void traffic(String str, int i) {
        if (this.mIsStarted && !TextUtils.isEmpty(str)) {
            TrafficMonitorItem trafficMonitorItem = (TrafficMonitorItem) this.mMonitorItemMap.get(str);
            if (trafficMonitorItem != null) {
                trafficMonitorItem.count++;
                trafficMonitorItem.totalSize += i;
                return;
            }
            TrafficMonitorItem trafficMonitorItem2 = new TrafficMonitorItem();
            this.mMonitorItemMap.put(str, trafficMonitorItem2);
            trafficMonitorItem2.count++;
            trafficMonitorItem2.totalSize += i;
        }
    }

    public void print() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append("startTime:").append(CommonUtils.createDataFormat(TIME_FORMAT).format(new Date(this.mStartTime)));
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(32);
        concurrentHashMap.putAll(this.mMonitorItemMap);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (Entry entry : concurrentHashMap.entrySet()) {
            if (Const.isMnsCmd((String) entry.getKey())) {
                i6 += ((TrafficMonitorItem) entry.getValue()).count;
                i5 += ((TrafficMonitorItem) entry.getValue()).totalSize;
            } else if (((String) entry.getKey()).contains(".do")) {
                i2 += ((TrafficMonitorItem) entry.getValue()).count;
                i += ((TrafficMonitorItem) entry.getValue()).totalSize;
            } else {
                i4 += ((TrafficMonitorItem) entry.getValue()).count;
                i3 += ((TrafficMonitorItem) entry.getValue()).totalSize;
            }
            int i7 = i;
            int i8 = i2;
            i5 = i5;
            i6 = i6;
            i3 = i3;
            i4 = i4;
            i = i7;
            i2 = i8;
        }
        sb.append(Token.SEPARATOR);
        sb.append("{mlinkCount:").append(i6).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        sb.append("mlinkTotalSize:").append(i5).append("} ");
        sb.append("{otherCount:").append(i4).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        sb.append("otherTotalSize:").append(i3).append("} ");
        sb.append("{httpCount:").append(i2).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        sb.append("httpTotalSize:").append(i).append("}");
        sb.append("]");
        MiLinkLog.i(TAG, "traffic statistic: " + sb.toString());
    }

    public void printDetail() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append("startTime:").append(CommonUtils.createDataFormat(TIME_FORMAT).format(new Date(this.mStartTime)));
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(32);
        concurrentHashMap.putAll(this.mMonitorItemMap);
        for (Entry entry : concurrentHashMap.entrySet()) {
            sb.append(" {cmd:").append((String) entry.getKey()).append(", count:").append(((TrafficMonitorItem) entry.getValue()).count).append(", totalSize:").append(((TrafficMonitorItem) entry.getValue()).totalSize).append("}");
        }
        sb.append("]");
        MiLinkLog.i(TAG, "traffic statistic detail: " + sb.toString());
    }
}
