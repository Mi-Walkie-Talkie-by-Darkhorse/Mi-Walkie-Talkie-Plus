package com.mi.milinkforgame.sdk.config;

import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.mi.milinkforgame.sdk.data.Const.Service;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

public class Settings {
    public static final String ACC_ERROR_REPORT_SAMPLES = "AccErrorReportSamples";
    public static final String ACC_PORT = "accPort";
    public static final String ACC_REPORT_COUNT = "AccReportCount";
    public static final String ACC_REPORT_INTERVAL = "AccReportInterval";
    public static final String ACC_REPORT_SAMPLES = "AccReportSamples";
    public static final String CDN_PORT = "CdnPort";
    public static final String CLEAR_EXPIRE_OPERATOR = "ClearExpireOperator";
    public static final String COMPRESS_TO_WEBP = "CompressToWebp";
    public static final String CONNECTION_COUNT = "ConnectionCount";
    public static final String CONNECT_TIMEOUT = "ConnectTimeout";
    public static final String CRASH_CLEAR_ITEMS = "CrashClearItems";
    public static final String CRASH_MAX = "CrashMax";
    private static final String DEFAULT_REPORT_LOG_SERVER = "183.61.39.173";
    public static final String DNS_TIMEOUT = "DNSTimeout";
    public static final String DOWNLOAD_URL = "DownloadURL";
    public static final String ECHO_REQUEST_SIZE = "IPScoreEchoRequestSize";
    public static final String ENABLE_LOG = "EnableLog";
    public static final String ENABLE_SESSION_ID = "EnableSessionId";
    public static final String ENABLE_WAKELOCK_DELAY = "EnableWakeLockDelay";
    public static final String HANDSHAKE_TIMEOUT = "HandshakeTimeout";
    public static final String HEARTBEAT_TIME = "HeartbeatTime";
    public static final String HEARTBEAT_TIMEOUT = "HeartbeatTimeout";
    public static final String HEARTBEAT_TIME_IDLE = "HeartbeatTimeIdle";
    public static final String HTTP_PARALLEL_CONN_COUNT = "HttpParallelConnCount";
    public static final String IP_NO_PMTU_DISC = "ip_no_pmtu_disc";
    public static final String IP_SCORE_ENABLE = "IPScoreEnable";
    public static final String LOGIN_FAIL_CLEAR_ITEMS = "LoginFailClearItems";
    public static final String LOGIN_FAIL_MAX = "LoginFailMax";
    public static final String LOG_CACHE_TIME = "LogCacheTime";
    public static final String LOG_LEVEL = "LogLevel";
    public static final String MAX_LOG_FILE_SIZE = "MaxLogFileSize";
    public static final String MAX_PACKET_SIZE = "MaxPacketSize";
    public static final String MNS_DIAGNOSIS_SAMPLES = "MnsDiagnosisSamples";
    public static final String MNS_SETTINGS = "MNSSettting";
    public static final String NO_TCP_RETRY_INTERVAL = "NoneTcpRetryInterval";
    public static final String PHOTO_UPLOAD = "PhotoUpload";
    private static final String PRE_LOAD_COUNT_2G = "PreloadCount2G";
    private static final String PRE_LOAD_COUNT_3G = "PreloadCount3G";
    private static final String PRE_LOAD_COUNT_WIFI = "PreloadCountWifi";
    public static final String RECV_TIMEOUT = "RecvTimeout";
    public static final String REPAIR_ITEMS = "RepairItems";
    public static final String REPORT_LOG_SERVER = "ReportLogServer";
    public static final String REPORT_SETTING = "ReportSetting";
    public static final String REQUEST_NUMBER_THRESHOLD = "IPScoreRequstNumberThreshold";
    public static final String REQUEST_TIMEOUT = "RequestTimeout";
    public static final String RESTART_DURATION_THRESHOLD = "RestartDurationThreShold";
    public static final String RESTART_MAX_TIMES = "RestartMaxTimes";
    public static final String SAFE_MODE_SETTING = "SafeModeSetting";
    public static final String SEND_TIMEOUT = "SendTimeout";
    public static final String SOCKET_MAX_SEG = "SocketMaxSeg";
    public static final String SPEED_TEST_CONNECT_TIMEOUT = "TestSpeedConnTime";
    public static final String SPEED_TEST_FAIL_INTERVAL = "TraceFailReportInterval";
    public static final String SPEED_TEST_REQUEST_TIMEOUT = "TestSpeedReqTimeOut";
    public static final String SPEED_TEST_SUCCESS_INTERVAL = "TraceSucReportInterval";
    public static final String START_DURATION = "StartDuration";
    private static String TAG = Settings.class.getName();
    public static final String TCP_PARALLEL_CONN_COUNT = "TcpParallelConnCount";
    public static final String TIMEOUT_RETRY_THRESHOLD = "TimeoutRetryThreshold";
    public static final String TRACE_LOG = "TraceLog";
    public static final String UNQUALIFIED_REQUEST_RATIO = "IPScoreUnqualifiedRequestRatio";
    public static final String UPDATE_OPTIMUM_IP_INTERVAL = "UpdateOptimumIpInterval";
    public static final String UPLOADER_DIAGNOSIS_SAMPLES = "UploaderDiagnosisSamples";
    private static final String VIDEO_FILE_RETRY_COUNT = "VideoFileRetryCount";
    private static final String VIDEO_PART_CONCURRENT_COUNT = "VideoPartConcurrentCount";
    private static final String VIDEO_PART_RETRY_COUNT = "VideoPartRetryCount";
    private static final String VIDEO_PART_SIZE = "VideoPartSize";
    public static final String WEBP_QUALITY_HIGH = "WebPQualityHigh";
    public static final String WEBP_QUALITY_LOW = "WebPQualityLow";
    private String accPort = "80,443,8080,14000";
    private String crashClearItems = "";
    private String downloadUrl = "";
    private String loginFailClearItems = "";
    private String repairItems = "";
    private ConcurrentHashMap<String, Long> settingMap = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, Object> settingObjMap = new ConcurrentHashMap<>();
    private String socketMaxSeg = "1440|1200|700";
    private VideoSettings videoSetting = new VideoSettings();

    public class VideoSettings {
        public int mPreloadCount2G = 3;
        public int mPreloadCount3G = 3;
        public int mPreloadCountWifi = 100;
        public int mVideoFileRetryCount = 2;
        public int mVideoPartConcurrentCount = 2;
        public int mVideoPartRetryCount = 3;
        public int mVideoPartSize = 262144;

        public VideoSettings() {
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("VideoPartRetryCount = " + this.mVideoPartRetryCount);
            sb.append("VideoFileRetryCount = " + this.mVideoFileRetryCount);
            sb.append("VideoPartSize = " + this.mVideoPartSize);
            sb.append("VideoPartConcurrentCount = " + this.mVideoPartConcurrentCount);
            sb.append("PreloadCountWifi = " + this.mPreloadCountWifi);
            sb.append("PreloadCount3G = " + this.mPreloadCount3G);
            sb.append("PreloadCount2G = " + this.mPreloadCount2G);
            return sb.toString();
        }
    }

    public Settings() {
        this.settingMap.put(HEARTBEAT_TIME_IDLE, Long.valueOf(Service.DefPowerSaveHeartBeatInterval));
        this.settingMap.put(HEARTBEAT_TIME, Long.valueOf(Service.DefHeartBeatInterval));
        this.settingMap.put(CONNECTION_COUNT, Long.valueOf(2));
        this.settingMap.put(RECV_TIMEOUT, Long.valueOf(IPC.LogoutAsyncTellServerTimeout));
        this.settingMap.put(SEND_TIMEOUT, Long.valueOf(IPC.LogoutAsyncTellServerTimeout));
        this.settingMap.put(REQUEST_TIMEOUT, Long.valueOf(60000));
        this.settingMap.put(MAX_PACKET_SIZE, Long.valueOf(2097152));
        this.settingMap.put(CONNECT_TIMEOUT, Long.valueOf(IPC.LogoutAsyncTellServerTimeout));
        this.settingMap.put(LOG_CACHE_TIME, Long.valueOf(7));
        this.settingMap.put(MAX_LOG_FILE_SIZE, Long.valueOf(6));
        this.settingMap.put(ACC_REPORT_INTERVAL, Long.valueOf(600));
        this.settingMap.put(ACC_REPORT_SAMPLES, Long.valueOf(10));
        this.settingMap.put(ACC_REPORT_COUNT, Long.valueOf(50));
        this.settingMap.put(HANDSHAKE_TIMEOUT, Long.valueOf(30000));
        this.settingMap.put(HEARTBEAT_TIMEOUT, Long.valueOf(60000));
        this.settingMap.put(DNS_TIMEOUT, Long.valueOf(IPC.LogoutAsyncTellServerTimeout));
        this.settingMap.put(MNS_DIAGNOSIS_SAMPLES, Long.valueOf(100));
        this.settingMap.put(UPLOADER_DIAGNOSIS_SAMPLES, Long.valueOf(300));
        this.settingMap.put(CDN_PORT, Long.valueOf(80));
        this.settingMap.put(TIMEOUT_RETRY_THRESHOLD, Long.valueOf(2));
        this.settingMap.put(TCP_PARALLEL_CONN_COUNT, Long.valueOf(2));
        this.settingMap.put(HTTP_PARALLEL_CONN_COUNT, Long.valueOf(2));
        this.settingMap.put(ENABLE_LOG, Long.valueOf(1));
        this.settingMap.put(LOG_LEVEL, Long.valueOf(3));
        this.settingMap.put(SPEED_TEST_SUCCESS_INTERVAL, Long.valueOf(86400000));
        this.settingMap.put(SPEED_TEST_FAIL_INTERVAL, Long.valueOf(OpenStreetMapTileProviderConstants.ONE_HOUR));
        this.settingMap.put(SPEED_TEST_REQUEST_TIMEOUT, Long.valueOf(IPC.LogoutAsyncTellServerTimeout));
        this.settingMap.put(SPEED_TEST_CONNECT_TIMEOUT, Long.valueOf(30000));
        this.settingMap.put(UPDATE_OPTIMUM_IP_INTERVAL, Long.valueOf(604800000));
        this.settingMap.put(NO_TCP_RETRY_INTERVAL, Long.valueOf(21600000));
        this.settingMap.put(ENABLE_SESSION_ID, Long.valueOf(1));
        this.settingMap.put(IP_NO_PMTU_DISC, Long.valueOf(1));
        this.settingMap.put(CLEAR_EXPIRE_OPERATOR, Long.valueOf(OpenStreetMapTileProviderConstants.TILE_EXPIRY_TIME_MILLISECONDS));
        this.settingMap.put(ACC_ERROR_REPORT_SAMPLES, Long.valueOf(1));
        this.settingMap.put(START_DURATION, Long.valueOf(IPC.LogoutAsyncTimeout));
        this.settingMap.put(CRASH_MAX, Long.valueOf(3));
        this.settingMap.put(LOGIN_FAIL_MAX, Long.valueOf(3));
        this.settingMap.put(ENABLE_WAKELOCK_DELAY, Long.valueOf(0));
        this.settingMap.put(COMPRESS_TO_WEBP, Long.valueOf(1));
        this.settingMap.put(REQUEST_NUMBER_THRESHOLD, Long.valueOf(100));
        this.settingMap.put(UNQUALIFIED_REQUEST_RATIO, Long.valueOf(50));
        this.settingMap.put(ECHO_REQUEST_SIZE, Long.valueOf(1000));
        this.settingMap.put(RESTART_DURATION_THRESHOLD, Long.valueOf(0));
        this.settingMap.put(RESTART_MAX_TIMES, Long.valueOf(100));
        this.settingObjMap.put(ACC_PORT, this.accPort);
        this.settingObjMap.put(PHOTO_UPLOAD, this.videoSetting);
        this.settingObjMap.put(SOCKET_MAX_SEG, this.socketMaxSeg);
        this.settingObjMap.put(CRASH_CLEAR_ITEMS, this.crashClearItems);
        this.settingObjMap.put(LOGIN_FAIL_CLEAR_ITEMS, this.loginFailClearItems);
        this.settingObjMap.put(REPAIR_ITEMS, this.repairItems);
        this.settingObjMap.put(DOWNLOAD_URL, this.downloadUrl);
        this.settingObjMap.put(REPORT_LOG_SERVER, DEFAULT_REPORT_LOG_SERVER);
        this.settingObjMap.put(WEBP_QUALITY_LOW, "80,80,90");
        this.settingObjMap.put(WEBP_QUALITY_HIGH, "80,80,90");
        this.settingObjMap.put(IP_SCORE_ENABLE, "0|0|5000");
    }

    public void onConfigUpdate(Map<String, byte[]> map) {
    }

    public synchronized long getLong(String str, long j) {
        if (str != null) {
            if (str.length() != 0) {
                Long l = null;
                if (this.settingMap != null && this.settingMap.containsKey(str)) {
                    l = (Long) this.settingMap.get(str);
                }
                if (l != null) {
                    j = l.longValue();
                }
            }
        }
        return j;
    }

    public synchronized Object getObject(String str, Object obj) {
        if (str != null) {
            if (str.length() != 0) {
                if (this.settingObjMap != null && this.settingObjMap.containsKey(str)) {
                    obj = this.settingObjMap.get(str);
                }
            }
        }
        return obj;
    }
}
