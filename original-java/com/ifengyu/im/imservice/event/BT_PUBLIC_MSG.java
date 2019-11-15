package com.ifengyu.im.imservice.event;

public enum BT_PUBLIC_MSG {
    BT_OPEN_HF(1000),
    BT_CLOSE_HF,
    BT_DISCONNECT_HF,
    BT_HF_CONN_STATE_QUERY,
    BT_HF_CONNECTED,
    BT_HF_DISCONNECTED,
    BT_OPEN_PHONE_AUDIO,
    BT_CLOSE_PHONE_AUDIO,
    BT_HF_ACK;
    
    private int value;

    private static class Counter {
        /* access modifiers changed from: private */
        public static int nextValue;

        private Counter() {
        }

        static {
            nextValue = 0;
        }
    }

    private BT_PUBLIC_MSG(int i) {
        this.value = i;
        Counter.nextValue = i + 1;
    }

    public int value() {
        return this.value;
    }
}
