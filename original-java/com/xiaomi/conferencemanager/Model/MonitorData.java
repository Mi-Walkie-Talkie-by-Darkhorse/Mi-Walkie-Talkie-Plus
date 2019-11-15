package com.xiaomi.conferencemanager.Model;

import java.util.ArrayList;

public class MonitorData {
    public ArrayList<String> avgFrameList;
    public double avgRtt;
    public ArrayList<String> avgRttList;
    public double byteRate;
    public int connectDetectTime;
    public int curBitRate;
    public int isRelay;
    public double lostRate;
    public ArrayList<String> lostRateList;

    public enum Type {
        RUN_HORSE(1),
        P2P_INIT(2),
        CONF_INIT(3),
        CRASH(4);
        
        private int type;

        private Type(int i) {
            this.type = i;
        }

        public int getValue() {
            return this.type;
        }

        public static Type valueOf(int i) {
            switch (i) {
                case 1:
                    return RUN_HORSE;
                case 2:
                    return P2P_INIT;
                case 3:
                    return CONF_INIT;
                case 4:
                    return CRASH;
                default:
                    return null;
            }
        }
    }
}
