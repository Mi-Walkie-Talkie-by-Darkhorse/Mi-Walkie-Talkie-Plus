package com.xiaomi.push;

/* renamed from: com.xiaomi.push.if  reason: invalid class name */
/* loaded from: classes2.dex */
public enum Cif {
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
    CancelPushMessage("clear_push_message"),
    CancelPushMessageACK("clear_push_message_ack"),
    DisablePushMessage("disable_push"),
    EnablePushMessage("enable_push"),
    ClientABTest("client_ab_test"),
    AwakeSystemApp("awake_system_app"),
    AwakeAppResponse("awake_app_response"),
    HybridRegister("hb_register"),
    HybridRegisterResult("hb_register_res"),
    HybridUnregister("hb_unregister"),
    HybridUnregisterResult("hb_unregister_res"),
    ThirdPartyRegUpdate("3rd_party_reg_update"),
    VRUpload("vr_upload"),
    PushLogUpload("log_upload"),
    APP_WAKEUP("app_wakeup"),
    APP_SLEEP("app_sleep"),
    NOTIFICATION_SWITCH("notification_switch"),
    ACTIVITY_RESUMED("activity_resumed"),
    HeadsUpReporter("headsup_reporter"),
    ScenePushRuleUpdate("scene_push_rule_update"),
    ScenePushRuleDelete("scene_push_rule_delete"),
    ScenePushRuleTrigger("scene_push_rule_trigger"),
    NotificationRemoved("notification_removed"),
    NotificationArrived("notification_arrived"),
    NotificationClicked("notification_clicked"),
    PullDownPop("pull_down_pop"),
    AppDataCleared("app_data_cleared"),
    TtsReporter("tts_data_reporter"),
    SDK_START_ACTIVITY("sdk_start_activity"),
    DetectAppAlive("detect_app_alive"),
    DetectAppAliveResult("detect_app_alive_result");
    

    /* renamed from: a  reason: collision with other field name */
    public final String f527a;

    Cif(String str) {
        this.f527a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f527a;
    }
}
