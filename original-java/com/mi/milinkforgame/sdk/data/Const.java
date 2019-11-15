package com.mi.milinkforgame.sdk.data;

public final class Const {
    public static final String DATA_EXTRA_CMD = "data.extra";
    public static final String PARAM_APP_ID = "appid";
    public static final String PARAM_CHANNEL = "channel";
    public static final String PARAM_CLIENT_VERSION = "cversion";
    public static final String PARAM_DATA = "data";
    public static final String PARAM_DEVICE_ID = "did";
    public static final String PARAM_DEVICE_INFO = "dinfo";
    public static final String PARAM_FREQ = "freq";
    public static final String PARAM_MI_LINK_VERSION = "mversion";
    public static final String PARAM_PACKET_VID = "vid";
    public static final String PARAM_SYSTEM_VERSION = "sversion";
    public static final String SPEED_TEST_SERVER_ADDR = "http://d.g.mi.com/tr.do​";
    public static final String SPEED_TEST_SERVER_ADDR_IP = "http://42.62.94.67/tr.do​";
    public static final String STASTIC_SERVER_ADDR = "http://d.g.mi.com/c.do​";
    public static final String STASTIC_SERVER_ADDR_IP = "http://42.62.94.67/c.do​";
    public static final String STASTIC_SERVER_HOST = "d.g.mi.com";
    public static final String TRACE_AC = "ac";
    public static final String TRACE_AC_VALUE = "mlink_cmd";

    public interface MnsCmd {
        public static final String MNS_BIND = "milink.bind";
        public static final String MNS_BIND_SERVICE = "milink.bindservice";
        public static final String MNS_DNS_FAIL_CMD = "milink.dnsfail";
        public static final String MNS_GET_CONFIG = "milink.getconfig";
        public static final String MNS_GET_REMOTE_SERVICE = "milink.getremoteservice";
        public static final String MNS_HAND_SHAKE = "milink.handshake";
        public static final String MNS_HEARTBEAT = "milink.heartbeat";
        public static final String MNS_KICK_CMD = "milink.kick";
        public static final String MNS_LOGIN = "milink.login";
        public static final String MNS_LOGOFF = "milink.loginoff";
        public static final String MNS_OPEN_CMD = "milink.open";
        public static final String MNS_PING_CMD = "milink.ping";
        public static final String MNS_PUSH_CMD = "milink.push";
        public static final String MNS_REGISTER = "milink.push.register";
        @Deprecated
        public static final String MNS_REGISTER_BIND = "milink.registerbind";
        public static final String MNS_START_SERVICE = "milink.startservice";
    }

    public interface Access {
        public static final String B2Login = "mns.internal.login.b2";
        public static final String BackupIP = "access.server.backup";
        public static final String Connect = "mns.internal.connect";
        public static final String DataThreshold = "access.data.count";
        public static final String DefBackupIP = null;
        public static final int DefDataThreshold = 50;
        public static final int DefSampleRate = 10;
        public static final long DefTimeThreshold = 600000;
        public static final String DnsResolve = "mns.internal.dnsresolve";
        public static final String GuestPostfix = ".mi";
        public static final String HandShake = "mns.internal.handshake";
        public static final String Heartbeat = "mns.internal.heartbeat";
        public static final String NetMatchInfo = "mns.internal.netmatchinfo";
        public static final String OpenSession = "mns.internal.opensession";
        public static final String SampleRate = "access.samplerate";
        public static final String TimeThreshold = "access.time.interval";
        public static final String WtLogin = "mns.internal.login.wt";
    }

    public interface Debug {
        public static final String ClientFileBlockCount = "client.debug.file.blockcount";
        public static final String ClientFileExt = ".app.log";
        public static final String ClientFileKeepPeriod = "client.debug.file.keepperiod";
        public static final String ClientFileTraceLevel = "client.debug.file.tracelevel";
        public static final String ClientFileTracerName = "Mns.Client.File.Tracer";
        public static final String ClientLogcatTraceLevel = "client.debug.logcat.tracelevel";
        public static final int DefDataThreshold = 16384;
        public static final int DefFileBlockCount = 72;
        public static final int DefFileBlockSize = 524288;
        public static final long DefFileKeepPeriod = 259200000;
        public static final int DefFileTraceLevel = 63;
        public static final int DefLogcatTraceLevel = 63;
        public static final int DefTimeThreshold = 15000;
        public static final boolean Enabled = true;
        public static final String FileBlockCount = "debug.file.blockcount";
        public static final String FileExt = ".m.log";
        public static final String FileKeepPeriod = "debug.file.keepperiod";
        public static final String FileRoot = "Xiaomi";
        public static final String FileTraceLevel = "debug.file.tracelevel";
        public static final boolean FileTracerEnabled = true;
        public static final String FileTracerName = "Mns.File.Tracer";
        public static final boolean InfiniteTraceFile = false;
        public static final String LogcatTraceLevel = "debug.logcat.tracelevel";
        public static final boolean LogcatTracerEnabled = true;
        public static final long MinSpaceRequired = 83886080;
        public static final boolean NeedAttached = false;
        public static final boolean ShowErrorCode = false;
    }

    public interface Event {
        public static final int AUTH_FAIL = 5;
        public static final int CONFIG_UPDATED = 1;
        public static final int EXP_VERSION_LIMIT = 11;
        public static final String Extra = "event.extra";
        public static final String Extra2 = "event.extra2";
        public static final int MI_LINK_LOGIN_STATE_CHANGED = 14;
        public static final int MNS_HEARTBEAT = 8;
        public static final int MNS_INTERNAL_ERROR = 9;
        public static final int RUNTIME_CHANGED = 12;
        public static final int SAFE_MODE_B2_SUCC = 13;
        public static final int SERVER_LOGIN_FAIL = 7;
        public static final int SERVER_STATE_UPDATED = 6;
        public static final int SERVICE_CONNECTED = 10;
        public static final int SUICIDE_TIME = 4;
        public static final int TICKET_UPDATED = 2;
    }

    public interface Extra {
        public static final String BackgroundMode = "idle.timespan";
        public static final long DefBackgroundTimespan = 900000;
        public static final boolean DefSuicideEnabled = true;
        public static final long DefSuicideTimespan = 43200000;
        public static final String GuestPostfix = "guest.postfix";
        public static final String MnsDebugIPList = "mns.debug.iplist";
        public static final String OnStartCommandReturn = "onStartCommandReturn";
        public static final String ReportLogContent = "report_log_content";
        public static final String ReportLogTitle = "report_log_title";
        public static final String SuicideEnabled = "suicide.enabled";
        public static final String SuicideTimespan = "suicide.time.startup";
    }

    public interface IPC {
        public static final int Auth = 1;
        public static final String ClientInfo = "ipc.client.info";
        public static final String ClientNotifier = "ipc.client.notifier";
        public static final long DefAsyncTimeout = 150000;
        public static final int Login = 4;
        public static final int Logout = 6;
        public static final long LogoutAsyncTellServerTimeout = 20000;
        public static final long LogoutAsyncTimeout = 15000;
        public static final int MaxRestartTimes = 3;
        public static final int Register = 2;
        public static final int ReportLog = 7;
        public static final String ServiceName = "com.mi.milink.sdk.service.MiLinkService";
        public static final int StatePass = 3;
        public static final int Transfer = 5;
        public static final long TransferAsyncTimeoutEx = 90000;
    }

    public interface LoginState {
        public static final int Logined = 2;
        public static final int Logining = 1;
        public static final int NotLogin = 0;
    }

    public interface MiLinkCode {
        public static final int MI_LINK_CODE_ACC_NEED_RETRY = 118;
        public static final int MI_LINK_CODE_B2_TOKEN_EXPIRED = 101;
        public static final int MI_LINK_CODE_KICKED_BY_SERVER = 102;
        public static final int MI_LINK_CODE_OK = 0;
        public static final int MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN = 110;
        public static final int MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN_URGENT = 119;
        public static final int MI_LINK_CODE_SERVICE_TOKEN_EXPIRED = 100;
        public static final int MI_LINK_CODE_SHOULD_CHECK_UPDATE = 103;
        public static final int MI_LINK_CODE_TIMEOUT = 109;
    }

    public enum MiLinkSdkState {
        Disconnected,
        Connecting,
        Connected,
        Logining,
        Logined
    }

    public interface Protection {
        public static final String Client = "protect.client";
    }

    public interface Push {
        public static final String ActionFormat = "mns.push.to.%s";
        public static final String CountField = "push.count";
        public static final String DataField = "push.data";
        public static final int TYPE_BIZ_PUSH = 1;
        public static final int TYPE_NONE = 0;
        public static final int TYPE_REBORN = 2;
        public static final String TimeField = "push.time";
        public static final String TypeField = "push.type";
    }

    public interface ServerPort {
        public static final int PORT_14000 = 14000;
        public static final int PORT_443 = 443;
        public static final int PORT_80 = 80;
        public static final int PORT_8080 = 8080;
        public static final int[] PORT_ARRAY = {PORT_443, 80, PORT_8080, PORT_14000};
    }

    public interface ServerState {
        public static final int Connected = 2;
        public static final int Connecting = 1;
        public static final int Disconnected = 0;
    }

    public interface Service {
        public static final String ActionName = "milink.heartbeat";
        public static final long DefHeartBeatInterval = 180000;
        public static final int DefPingTime = 3;
        public static final long DefPowerSaveHeartBeatInterval = 1200000;
    }

    public interface Tag {
        public static final String Client = "MiLinkClient";
        public static final String Service = "MiLinkServiceBinder";
    }

    public static boolean isMnsCmd(String str) {
        if (str != null) {
            return str.startsWith("milink");
        }
        return false;
    }
}
