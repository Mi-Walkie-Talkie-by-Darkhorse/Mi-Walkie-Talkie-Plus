package com.ifengyu.im.imservice.manager;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.protobuf.IMBaseDefine.OtherCmdID;
import com.ifengyu.im.protobuf.IMOther.IMHeartBeat;
import com.ifengyu.im.utils.Logger;

public class IMHeartBeatManager extends IMManager {
    private static IMHeartBeatManager inst = new IMHeartBeatManager();
    private final String ACTION_SENDING_HEARTBEAT = "com.mogujie.tt.imservice.manager.imheartbeatmanager";
    private final int HEARTBEAT_INTERVAL = 240000;
    private BroadcastReceiver imReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            IMHeartBeatManager.this.logger.w("heartbeat#im#receive action:%s", action);
            if (action.equals("com.mogujie.tt.imservice.manager.imheartbeatmanager")) {
                IMHeartBeatManager.this.sendHeartBeatPacket();
            }
        }
    };
    /* access modifiers changed from: private */
    public Logger logger = Logger.getLogger(IMHeartBeatManager.class);
    private PendingIntent pendingIntent;

    public static IMHeartBeatManager instance() {
        return inst;
    }

    public void doOnStart() {
    }

    public void onloginNetSuccess() {
        this.logger.e("heartbeat#onLocalNetOk", new Object[0]);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mogujie.tt.imservice.manager.imheartbeatmanager");
        this.logger.d("heartbeat#register actions", new Object[0]);
        this.ctx.registerReceiver(this.imReceiver, intentFilter);
        scheduleHeartbeat(240000);
    }

    public void reset() {
        this.logger.d("heartbeat#reset begin", new Object[0]);
        try {
            this.ctx.unregisterReceiver(this.imReceiver);
            cancelHeartbeatTimer();
            this.logger.d("heartbeat#reset stop", new Object[0]);
        } catch (Exception e) {
            this.logger.e("heartbeat#reset error:%s", e.getCause());
        }
    }

    public void onMsgServerDisconn() {
        this.logger.w("heartbeat#onChannelDisconn", new Object[0]);
        cancelHeartbeatTimer();
    }

    private void cancelHeartbeatTimer() {
        this.logger.w("heartbeat#cancelHeartbeatTimer", new Object[0]);
        if (this.pendingIntent == null) {
            this.logger.w("heartbeat#pi is null", new Object[0]);
        } else {
            ((AlarmManager) this.ctx.getSystemService("alarm")).cancel(this.pendingIntent);
        }
    }

    private void scheduleHeartbeat(int i) {
        this.logger.d("heartbeat#scheduleHeartbeat every %d seconds", Integer.valueOf(i));
        if (this.pendingIntent == null) {
            this.logger.w("heartbeat#fill in pendingintent", new Object[0]);
            this.pendingIntent = PendingIntent.getBroadcast(this.ctx, 0, new Intent("com.mogujie.tt.imservice.manager.imheartbeatmanager"), 0);
            if (this.pendingIntent == null) {
                this.logger.w("heartbeat#scheduleHeartbeat#pi is null", new Object[0]);
                return;
            }
        }
        ((AlarmManager) this.ctx.getSystemService("alarm")).setInexactRepeating(0, System.currentTimeMillis() + ((long) i), (long) i, this.pendingIntent);
    }

    public void sendHeartBeatPacket() {
        this.logger.d("heartbeat#reqSendHeartbeat", new Object[0]);
        WakeLock newWakeLock = ((PowerManager) this.ctx.getSystemService("power")).newWakeLock(1, "teamtalk_heartBeat_wakelock");
        newWakeLock.acquire();
        try {
            IMSocketManager.instance().sendRequest(IMHeartBeat.newBuilder().build(), 7, OtherCmdID.CID_OTHER_HEARTBEAT_VALUE, new Packetlistener(5000) {
                public void onSuccess(Object obj) {
                    IMHeartBeatManager.this.logger.d("heartbeat#心跳成功，链接保活", new Object[0]);
                }

                public void onFaild() {
                    IMHeartBeatManager.this.logger.w("heartbeat#心跳包发送失败", new Object[0]);
                    IMSocketManager.instance().onMsgServerDisconn();
                }

                public void onTimeout() {
                    IMHeartBeatManager.this.logger.w("heartbeat#心跳包发送超时", new Object[0]);
                    IMSocketManager.instance().onMsgServerDisconn();
                }
            });
            this.logger.d("heartbeat#send packet to server", new Object[0]);
        } finally {
            newWakeLock.release();
        }
    }
}
