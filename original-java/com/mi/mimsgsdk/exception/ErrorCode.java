package com.mi.mimsgsdk.exception;

public interface ErrorCode {
    public static final int OK = 0;
    public static final int UNKNOWN = -1;

    public interface UploadLog {
        public static final int GET_ZIP_FILE_FAIL = 3;
        public static final int LOG_DIR_NOT_EXIST = 1;
        public static final int NO_LOG_FILE = 2;
        public static final int NO_WIFI = 9;
        public static final int PROCESSING = 8;
        public static final int SRART_UPLOAD_FAIL = 6;
        public static final int UPLOAD_FAIL = 7;
        public static final int ZIP_FAIL = 4;
        public static final int ZIP_FILE_TOO_LARGE = 5;
    }
}
