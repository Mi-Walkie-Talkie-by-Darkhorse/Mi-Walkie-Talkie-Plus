package com.ifengyu.intercom.device.common.model;

/* loaded from: classes2.dex */
public class OperationResult {
    public static final String ACTION_ADD_CH_TO_STATE = "ACTION_ADD_CH_TO_STATE";
    public static final String ACTION_CANCEL_CH_TO_STATE = "ACTION_CANCEL_CH_TO_STATE";
    public static final String ACTION_CLEAR_CHANNEL = "ACTION_CLEAR_CHANNEL";
    public static final String ACTION_CONFIG_FILE_DELETE = "ACTION_CONFIG_FILE_DELETE";
    public static final String ACTION_EDIT_CHANNEL = "ACTION_EDIT_CHANNEL";
    public static final String ACTION_IMPORT_CONFIG_FILE_CHANNELS = "ACTION_IMPORT_CONFIG_FILE_CHANNELS";
    public static final String ACTION_INSERT_CHANNEL = "ACTION_INSERT_CHANNEL";
    public static final String ACTION_OPEN_SHARE_LOCATION = "ACTION_OPEN_SHARE_LOCATION";
    public static final String ACTION_STOP_SHARE_LOCATION = "ACTION_STOP_SHARE_LOCATION";
    public static final String ACTION_SYNCED_ALL_CHANNEL = "ACTION_SYNCED_ALL_CHANNEL";
    public static final String ACTION_SYNC_CUSTOM_CHANNEL_END = "ACTION_SYNC_CUSTOM_CHANNEL_END";
    public static final String ACTION_SYNC_CUSTOM_CHANNEL_START = "ACTION_SYNC_CUSTOM_CHANNEL_START";
    public static final String ACTION_SYNC_REMOTE_CHANNEL_END = "ACTION_SYNC_REMOTE_CHANNEL_END";
    public static final String ACTION_SYNC_REMOTE_CHANNEL_START = "ACTION_SYNC_REMOTE_CHANNEL_START";
    public static final String ACTION_UPDATE_CH_TO_STATE = "ACTION_UPDATE_CH_TO_STATE";
    public static final String ACTION_UPDATE_DEVICE_NAME = "ACTION_UPDATE_DEVICE_NAME";
    public static final String ACTION_UPDATE_DEVICE_VOX = "ACTION_UPDATE_DEVICE_VOX";
    public static final int STATUS_FAIL = 2;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_SUCCESS = 1;
    public static final int STATUS_TIME_OUT = 3;
    private String action;
    private int status;

    public OperationResult(String str) {
        this(str, 0);
    }

    public String getAction() {
        return this.action;
    }

    public int getStatus() {
        return this.status;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public OperationResult(String str, int i) {
        this.action = str;
        this.status = i;
    }
}
