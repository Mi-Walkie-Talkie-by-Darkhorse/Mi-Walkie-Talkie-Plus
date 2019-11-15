package com.mi.mimsgsdk.stat;

public class StatConstants {

    public interface Cmd {
        public static final String EXIT_VOIP_ROOM = "exitVoipRoom";
        public static final String JOIN_VOIP_ROOM = "joinVoipRoom";
        public static final String OFFLINE_VOIP_ROOM = "offlineVoipRoom";
        public static final String REJOIN_VOIP_ROOM = "rejoinVoipRoom";
    }

    public interface EngineType {
        public static final String AGORA = "agora";
    }

    public interface ErrorCode {
        public static final int MILINK_IS_NULL = -1;
        public static final int OK = 0;
        public static final int PARSE_TO_PB_FAIL = -3;
        public static final int RSP_IS_NULL = -2;
        public static final int UNRECOGNIZED_SCRIBE_TYPE = -4;
    }

    public interface ScribeType {
        public static final int AGORA_LOG = 1;
        public static final int COMMON_LOG = 2;
    }
}
