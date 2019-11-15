package com.ifengyu.im.imservice.callback;

import android.os.Handler;
import com.ifengyu.im.utils.Logger;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

public class ListenerQueue {
    private static ListenerQueue listenerQueue = new ListenerQueue();
    private Map<Integer, Packetlistener> callBackQueue = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public volatile boolean hasTask = false;
    private Logger logger = Logger.getLogger(ListenerQueue.class);
    private volatile boolean stopFlag = false;
    private Handler timerHandler = new Handler();

    public static ListenerQueue instance() {
        return listenerQueue;
    }

    public void onStart() {
        this.logger.d("ListenerQueue#onStart run", new Object[0]);
        this.stopFlag = false;
        startTimer();
    }

    public void onDestory() {
        this.logger.d("ListenerQueue#onDestory ", new Object[0]);
        this.callBackQueue.clear();
        stopTimer();
    }

    /* access modifiers changed from: private */
    public void startTimer() {
        if (!this.stopFlag && !this.hasTask) {
            this.hasTask = true;
            this.timerHandler.postDelayed(new Runnable() {
                public void run() {
                    ListenerQueue.this.timerImpl();
                    ListenerQueue.this.hasTask = false;
                    ListenerQueue.this.startTimer();
                }
            }, 5000);
        }
    }

    private void stopTimer() {
        this.stopFlag = true;
    }

    /* access modifiers changed from: private */
    public void timerImpl() {
        long currentTimeMillis = System.currentTimeMillis();
        for (Entry entry : this.callBackQueue.entrySet()) {
            Packetlistener packetlistener = (Packetlistener) entry.getValue();
            Integer num = (Integer) entry.getKey();
            try {
                if (currentTimeMillis - packetlistener.getCreateTime() >= packetlistener.getTimeOut()) {
                    this.logger.d("ListenerQueue#find timeout msg", new Object[0]);
                    Packetlistener pop = pop(num.intValue());
                    if (pop != null) {
                        pop.onTimeout();
                    }
                }
            } catch (Exception e) {
                this.logger.d("ListenerQueue#timerImpl onTimeout is Error,exception is %s", e.getCause());
            }
        }
    }

    public void push(int i, Packetlistener packetlistener) {
        if (i <= 0 || packetlistener == null) {
            this.logger.d("ListenerQueue#push error, cause by Illegal params", new Object[0]);
        } else {
            this.callBackQueue.put(Integer.valueOf(i), packetlistener);
        }
    }

    public Packetlistener pop(int i) {
        Packetlistener packetlistener;
        synchronized (this) {
            if (this.callBackQueue.containsKey(Integer.valueOf(i))) {
                packetlistener = (Packetlistener) this.callBackQueue.remove(Integer.valueOf(i));
            } else {
                packetlistener = null;
            }
        }
        return packetlistener;
    }
}
