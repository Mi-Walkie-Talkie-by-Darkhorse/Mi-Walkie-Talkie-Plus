package com.ifengyu.im.imservice.manager;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.imservice.event.LoginEvent;
import com.ifengyu.im.imservice.event.ReconnectEvent;
import com.ifengyu.im.imservice.event.SocketEvent;
import com.ifengyu.im.utils.Logger;
import com.ifengyu.im.utils.NetworkUtil;
import com.ifengyu.library.base.a;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import de.greenrobot.event.c;

public class IMReconnectManager extends IMManager {
    private static final int HANDLER_CHECK_NETWORK = 1;
    private static final int INIT_RECONNECT_INTERVAL_SECONDS = 3;
    private static final int MAX_RECONNECT_INTERVAL_SECONDS = 60;
    private static IMReconnectManager inst = new IMReconnectManager();
    private final String ACTION_RECONNECT = "com.mogujie.tt.imlib.action.reconnect";
    ReconnectHandler handler = new ReconnectHandler(this);
    private BroadcastReceiver imReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            IMReconnectManager.this.logger.d("reconnect#im#receive action:%s", action);
            IMReconnectManager.this.onAction(action, intent);
        }
    };
    private volatile boolean isAlarmTrigger = false;
    /* access modifiers changed from: private */
    public Logger logger = Logger.getLogger(IMReconnectManager.class);
    private int reconnectInterval = 3;
    private volatile ReconnectEvent status = ReconnectEvent.NONE;
    private WakeLock wakeLock;

    static class ReconnectHandler extends a<IMReconnectManager> {
        public ReconnectHandler(IMReconnectManager iMReconnectManager) {
            super(iMReconnectManager);
        }

        public void handleMessage(Message message, IMReconnectManager iMReconnectManager) {
            switch (message.what) {
                case 1:
                    if (!NetworkUtil.isNetWorkAvalible(iMReconnectManager.ctx)) {
                        iMReconnectManager.logger.w("reconnect#handleMessage#网络依旧不可用", new Object[0]);
                        iMReconnectManager.releaseWakeLock();
                        c.a().e(ReconnectEvent.DISABLE);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public static IMReconnectManager instance() {
        return inst;
    }

    public void doOnStart() {
    }

    public void onNormalLoginOk() {
        onLocalLoginOk();
        this.status = ReconnectEvent.SUCCESS;
    }

    public void onLocalLoginOk() {
        this.logger.d("reconnect#LoginEvent onLocalLoginOk", new Object[0]);
        if (!c.a().c(inst)) {
            c.a().a((Object) inst);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mogujie.tt.imlib.action.reconnect");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.logger.d("reconnect#register actions", new Object[0]);
        this.ctx.registerReceiver(this.imReceiver, intentFilter);
    }

    public void onLocalNetOk() {
        this.logger.d("reconnect#onLoginSuccess 网络链接上来,无需其他操作", new Object[0]);
        this.status = ReconnectEvent.SUCCESS;
    }

    public void reset() {
        this.logger.d("reconnect#reset begin", new Object[0]);
        try {
            c.a().d(inst);
            this.ctx.unregisterReceiver(this.imReceiver);
            this.status = ReconnectEvent.NONE;
            this.isAlarmTrigger = false;
            this.logger.d("reconnect#reset stop", new Object[0]);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            this.logger.e("reconnect#reset error:%s", e.getCause());
        } finally {
            releaseWakeLock();
        }
    }

    public void onEventMainThread(SocketEvent socketEvent) {
        this.logger.d("reconnect#SocketEvent event:%s", socketEvent.name());
        switch (socketEvent) {
            case MSG_SERVER_DISCONNECTED:
            case REQ_MSG_SERVER_ADDRS_FAILED:
            case CONNECT_MSG_SERVER_FAILED:
                tryReconnect();
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(LoginEvent loginEvent) {
        this.logger.d("reconnect#LoginEvent event: %s", loginEvent.name());
        switch (loginEvent) {
            case LOGIN_INNER_FAILED:
                tryReconnect();
                return;
            case LOCAL_LOGIN_MSG_SERVICE:
                resetReconnectTime();
                releaseWakeLock();
                return;
            default:
                return;
        }
    }

    private boolean isReconnecting() {
        SocketEvent socketStatus = IMSocketManager.instance().getSocketStatus();
        LoginEvent loginStatus = IMLoginManager.instance().getLoginStatus();
        if (socketStatus.equals(SocketEvent.CONNECTING_MSG_SERVER) || socketStatus.equals(SocketEvent.REQING_MSG_SERVER_ADDRS) || loginStatus.equals(LoginEvent.LOGINING)) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void tryReconnect() {
        /*
            r5 = this;
            r4 = 1
            r2 = 0
            android.content.Context r0 = r5.ctx
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            if (r0 != 0) goto L_0x0027
            com.ifengyu.im.utils.Logger r0 = r5.logger
            java.lang.String r1 = "reconnect#netinfo 为空延迟检测"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r0.w(r1, r2)
            com.ifengyu.im.imservice.event.ReconnectEvent r0 = com.ifengyu.im.imservice.event.ReconnectEvent.DISABLE
            r5.status = r0
            com.ifengyu.im.imservice.manager.IMReconnectManager$ReconnectHandler r0 = r5.handler
            r2 = 2000(0x7d0, double:9.88E-321)
            r0.sendEmptyMessageDelayed(r4, r2)
        L_0x0026:
            return
        L_0x0027:
            monitor-enter(r5)
            boolean r0 = r0.isAvailable()     // Catch:{ all -> 0x005e }
            if (r0 == 0) goto L_0x0093
            com.ifengyu.im.imservice.event.ReconnectEvent r0 = r5.status     // Catch:{ all -> 0x005e }
            com.ifengyu.im.imservice.event.ReconnectEvent r1 = com.ifengyu.im.imservice.event.ReconnectEvent.NONE     // Catch:{ all -> 0x005e }
            if (r0 == r1) goto L_0x0052
            com.ifengyu.im.imservice.manager.IMLoginManager r0 = com.ifengyu.im.imservice.manager.IMLoginManager.instance()     // Catch:{ all -> 0x005e }
            boolean r0 = r0.isEverLogined()     // Catch:{ all -> 0x005e }
            if (r0 == 0) goto L_0x0052
            com.ifengyu.im.imservice.manager.IMLoginManager r0 = com.ifengyu.im.imservice.manager.IMLoginManager.instance()     // Catch:{ all -> 0x005e }
            boolean r0 = r0.isKickout()     // Catch:{ all -> 0x005e }
            if (r0 != 0) goto L_0x0052
            com.ifengyu.im.imservice.manager.IMSocketManager r0 = com.ifengyu.im.imservice.manager.IMSocketManager.instance()     // Catch:{ all -> 0x005e }
            boolean r0 = r0.isSocketConnect()     // Catch:{ all -> 0x005e }
            if (r0 == 0) goto L_0x0061
        L_0x0052:
            com.ifengyu.im.utils.Logger r0 = r5.logger     // Catch:{ all -> 0x005e }
            java.lang.String r1 = "reconnect#无需启动重连程序"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x005e }
            r0.i(r1, r2)     // Catch:{ all -> 0x005e }
            monitor-exit(r5)     // Catch:{ all -> 0x005e }
            goto L_0x0026
        L_0x005e:
            r0 = move-exception
            monitor-exit(r5)     // Catch:{ all -> 0x005e }
            throw r0
        L_0x0061:
            boolean r0 = r5.isReconnecting()     // Catch:{ all -> 0x005e }
            if (r0 == 0) goto L_0x008e
            com.ifengyu.im.utils.Logger r0 = r5.logger     // Catch:{ all -> 0x005e }
            java.lang.String r1 = "reconnect#正在重连中.."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x005e }
            r0.d(r1, r2)     // Catch:{ all -> 0x005e }
            r5.incrementReconnectInterval()     // Catch:{ all -> 0x005e }
            int r0 = r5.reconnectInterval     // Catch:{ all -> 0x005e }
            r5.scheduleReconnect(r0)     // Catch:{ all -> 0x005e }
            com.ifengyu.im.utils.Logger r0 = r5.logger     // Catch:{ all -> 0x005e }
            java.lang.String r1 = "reconnect#tryReconnect#下次重练时间间隔:%d"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x005e }
            r3 = 0
            int r4 = r5.reconnectInterval     // Catch:{ all -> 0x005e }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x005e }
            r2[r3] = r4     // Catch:{ all -> 0x005e }
            r0.d(r1, r2)     // Catch:{ all -> 0x005e }
            monitor-exit(r5)     // Catch:{ all -> 0x005e }
            goto L_0x0026
        L_0x008e:
            r5.handleReconnectServer()     // Catch:{ all -> 0x005e }
        L_0x0091:
            monitor-exit(r5)     // Catch:{ all -> 0x005e }
            goto L_0x0026
        L_0x0093:
            com.ifengyu.im.utils.Logger r0 = r5.logger     // Catch:{ all -> 0x005e }
            java.lang.String r1 = "reconnect#网络不可用!! 通知上层"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x005e }
            r0.d(r1, r2)     // Catch:{ all -> 0x005e }
            com.ifengyu.im.imservice.event.ReconnectEvent r0 = com.ifengyu.im.imservice.event.ReconnectEvent.DISABLE     // Catch:{ all -> 0x005e }
            r5.status = r0     // Catch:{ all -> 0x005e }
            de.greenrobot.event.c r0 = de.greenrobot.event.c.a()     // Catch:{ all -> 0x005e }
            com.ifengyu.im.imservice.event.ReconnectEvent r1 = com.ifengyu.im.imservice.event.ReconnectEvent.DISABLE     // Catch:{ all -> 0x005e }
            r0.e(r1)     // Catch:{ all -> 0x005e }
            goto L_0x0091
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.imservice.manager.IMReconnectManager.tryReconnect():void");
    }

    private void scheduleReconnect(int i) {
        this.logger.d("reconnect#scheduleReconnect after %d seconds", Integer.valueOf(i));
        PendingIntent broadcast = PendingIntent.getBroadcast(this.ctx, 0, new Intent("com.mogujie.tt.imlib.action.reconnect"), 268435456);
        if (broadcast == null) {
            this.logger.e("reconnect#pi is null", new Object[0]);
        } else {
            ((AlarmManager) this.ctx.getSystemService("alarm")).set(0, System.currentTimeMillis() + ((long) (i * 1000)), broadcast);
        }
    }

    private void incrementReconnectInterval() {
        if (this.reconnectInterval >= 60) {
            this.reconnectInterval = 60;
        } else {
            this.reconnectInterval *= 2;
        }
    }

    private void resetReconnectTime() {
        this.logger.d("reconnect#resetReconnectTime", new Object[0]);
        this.reconnectInterval = 3;
    }

    public void onAction(String str, Intent intent) {
        this.logger.d("reconnect#onAction action:%s", str);
        if (str.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            this.logger.d("reconnect#onAction#网络状态发生变化!!", new Object[0]);
            tryReconnect();
        } else if (str.equals("com.mogujie.tt.imlib.action.reconnect")) {
            this.isAlarmTrigger = true;
            tryReconnect();
        }
    }

    private void handleReconnectServer() {
        this.logger.d("reconnect#handleReconnectServer#定时任务触发", new Object[0]);
        acquireWakeLock();
        IMSocketManager.instance().disconnectMsgServer();
        if (this.isAlarmTrigger) {
            this.isAlarmTrigger = false;
            this.logger.d("reconnect#定时器触发重连。。。", new Object[0]);
            if (this.reconnectInterval > 24) {
                IMLoginManager.instance().relogin();
            } else {
                IMSocketManager.instance().reconnectMsg();
            }
        } else {
            this.logger.d("reconnect#正常重连，非定时器", new Object[0]);
            IMSocketManager.instance().reconnectMsg();
        }
    }

    private void acquireWakeLock() {
        try {
            if (this.wakeLock == null) {
                this.wakeLock = ((PowerManager) this.ctx.getSystemService("power")).newWakeLock(1, "teamtalk_reconnecting_wakelock");
                this.logger.i("acquireWakeLock#call acquireWakeLock", new Object[0]);
                this.wakeLock.acquire(IPC.LogoutAsyncTimeout);
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    /* access modifiers changed from: private */
    public void releaseWakeLock() {
        try {
            if (this.wakeLock != null && this.wakeLock.isHeld()) {
                this.logger.i("releaseWakeLock##call releaseWakeLock", new Object[0]);
                this.wakeLock.release();
                this.wakeLock = null;
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }
}
