package com.xiaomi.xmpush.thrift;

import java.util.Map;

public enum p {
    Invalid("INVALID"),
    BarClick("bar:click"),
    BarCancel("bar:cancel"),
    AppOpen("app:open"),
    PackageUninstall("package uninstalled"),
    AppUninstall("app_uninstalled"),
    ClientInfoUpdate("client_info_update"),
    ClientInfoUpdateOk("client_info_update_ok"),
    ClientMIIDUpdate("client_miid_update"),
    PullOfflineMessage("pull"),
    IosSleep("ios_sleep"),
    IosWakeUp("ios_wakeup"),
    AwakeApp("awake_app"),
    NormalClientConfigUpdate("normal_client_config_update"),
    CustomClientConfigUpdate("custom_client_config_update"),
    DailyCheckClientConfig("daily_check_client_config"),
    DataCollection("data_collection"),
    RegIdExpired("registration id expired"),
    ConnectionDisabled("!!!MILINK CONNECTION DISABLED!!!"),
    PackageUnregistered("package_unregistered"),
    DecryptMessageFail("decrypt_msg_fail"),
    SyncInfo("sync_info"),
    SyncInfoResult("sync_info_result"),
    ForceSync("force_sync"),
    UploadClientLog("upload_client_log"),
    NotificationBarInfo("notification_bar_info"),
    SyncMIID("sync_miid"),
    UploadTinyData("upload"),
    GeoUpdateLoc("geo_update_loc"),
    GeoRegsiter("geo_reg"),
    GeoRegsiterResult("geo_reg_result"),
    GeoUnregsiter("geo_unreg"),
    GeoUnregsiterResult("geo_unreg_result"),
    GeoSync("geo_sync"),
    GeoUpload("geo_upload"),
    GeoPackageUninstalled("geo_package_uninstalled"),
    CancelPushMessage("clear_push_message"),
    DisablePushMessage("disable_push"),
    EnablePushMessage("enable_push"),
    ClientABTest("client_ab_test"),
    AwakeSystemApp("awake_system_app"),
    HybridRegister("hb_register"),
    HybridRegisterResult("hb_register_res"),
    HybridUnregister("hb_unregister"),
    HybridUnregisterResult("hb_unregister_res");
    
    public static Map<String, p> U;
    public final String T;

    static {
        U = null;
    }

    private p(String str) {
        this.T = str;
    }

    public String toString() {
        return this.T;
    }
}
