.class public Lcom/mi/milinkforgame/sdk/config/ConfigManager;
.super Ljava/util/Observable;
.source "ConfigManager.java"


# static fields
.field private static final DEFAULT_HEART_BEAT_INTERVAL:I = 0x41eb0

.field private static final DEFAULT_SPEED_TEST_INTERVAL:I = 0x2932e00

.field private static final JSON_KEY_ENGINE_CONFIG_RATIO:Ljava/lang/String; = "engineConfRatio"

.field private static final JSON_KEY_HB:Ljava/lang/String; = "hb"

.field private static final JSON_KEY_INTL:Ljava/lang/String; = "intl"

.field private static final JSON_KEY_ST:Ljava/lang/String; = "st"

.field private static final JSON_KEY_TIP:Ljava/lang/String; = "tip"

.field private static final JSON_KEY_UIP:Ljava/lang/String; = "uip"

.field private static final MOBILE_NETWORK_CONNECTION_TIME_OUT:I = 0x4e20

.field private static final MOBILE_NETWORK_DNS_TIME_OUT:I = 0x1770

.field private static final MOBILE_NETWORK_REQUEST_TIME_OUT:I = 0x4e20

.field private static final MOBILE_NETWORK_UPLOAD_STASTIC_INTERVAL:I = 0x927c0

.field private static final PREF_KEY_CONFIG_TIME_STAMP:Ljava/lang/String; = "game_config_time_stamp"

.field private static final PREF_KEY_HEART_BEAT_INTERVAL:Ljava/lang/String; = "game_heart_beat_interval"

.field private static final PREF_KEY_SPEED_TEST_INTERVAL:Ljava/lang/String; = "game_speed_test_interval"

.field private static final PREF_KEY_SPEED_TEST_TIP:Ljava/lang/String; = "game_speed_test_tip"

.field private static final PREF_KEY_SPEED_TEST_UIP:Ljava/lang/String; = "game_speed_test_uip"

.field private static final PREF_KEY_SUID:Ljava/lang/String; = "game_suid"

.field private static final PREF_MNS_SETTINGS_DATA_NAME:Ljava/lang/String; = "game_mns_settings_data"

.field private static final TAG:Ljava/lang/String; = "ConfigManager"

.field private static final WIFI_CONNECTION_TIME_OUT:I = 0x3a98

.field private static final WIFI_DNS_TIME_OUT:I = 0xfa0

.field private static final WIFI_REQUEST_TIME_OUT:I = 0x3a98

.field private static final WIFI_UPLOAD_STASTIC_INTERVAL:I = 0x493e0

.field private static sIntance:Lcom/mi/milinkforgame/sdk/config/ConfigManager;


# instance fields
.field private configTimeStamp:J

.field private context:Landroid/content/Context;

.field private engineConfigRatio:F

.field private hasInitConfig:Z

.field private hasInitHeartBeat:Z

.field private hasInitStInterval:Z

.field private heartBeatInterval:J

.field private settings:Lcom/mi/milinkforgame/sdk/config/Settings;

.field private speedTestInterval:J

.field private speedTestTip:Ljava/lang/String;

.field private speedTestUip:Ljava/lang/String;

.field private suid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->sIntance:Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->engineConfigRatio:F

    const-wide/32 v0, 0x41eb0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    iput-boolean v3, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitHeartBeat:Z

    iput-boolean v3, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitConfig:Z

    iput-boolean v3, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitStInterval:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->settings:Lcom/mi/milinkforgame/sdk/config/Settings;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    new-instance v0, Lcom/mi/milinkforgame/sdk/config/Settings;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/config/Settings;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->settings:Lcom/mi/milinkforgame/sdk/config/Settings;

    return-void
.end method

.method private commit(Landroid/content/SharedPreferences$Editor;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->sIntance:Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    return-object v0
.end method

.method private getSettingsDataLong(Ljava/lang/String;J)J
    .locals 4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    const-string v1, "game_mns_settings_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method private getSettingsDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    const-string v1, "game_mns_settings_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private declared-synchronized setSettingsDataLong(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    const-string v1, "game_mns_settings_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->commit(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setSettingsDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->context:Landroid/content/Context;

    const-string v1, "game_mns_settings_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->commit(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateHeartBeatInterval(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heartbeat interval from server is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "ConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update heat beat interval from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    const-string v0, "game_heart_beat_interval"

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    invoke-direct {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->setInterval(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSpeedTestInterval(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speedtest interval from server is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    const-string v0, "game_speed_test_interval"

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    invoke-direct {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSpeedTestTcpIps(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speedtest tip is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    const-string v0, "game_speed_test_tip"

    invoke-direct {p0, v0, p1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSpeedTestUdpIps(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speedtest uip is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    const-string v0, "game_speed_test_uip"

    invoke-direct {p0, v0, p1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getConfigTimeStamp()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitConfig:Z

    if-nez v0, :cond_0

    const-string v0, "game_config_time_stamp"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSettingsDataLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitConfig:Z

    :cond_0
    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnetionTimeout()I
    .locals 2

    const/16 v0, 0x3a98

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4e20

    :cond_0
    return v0
.end method

.method public getDnsTimeout()I
    .locals 2

    const/16 v0, 0xfa0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1770

    :cond_0
    return v0
.end method

.method public declared-synchronized getEngineConfigRatio()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->engineConfigRatio:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeartBeatInterval()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitHeartBeat:Z

    if-nez v0, :cond_0

    const-string v0, "game_heart_beat_interval"

    const-wide/32 v2, 0x41eb0

    invoke-direct {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSettingsDataLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitHeartBeat:Z

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x41eb0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J

    :cond_0
    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->heartBeatInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequestTimeout()I
    .locals 2

    const/16 v0, 0x3a98

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4e20

    :cond_0
    return v0
.end method

.method public getSetting()Lcom/mi/milinkforgame/sdk/config/Settings;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->settings:Lcom/mi/milinkforgame/sdk/config/Settings;

    return-object v0
.end method

.method public declared-synchronized getSpeedTestInterval()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitStInterval:Z

    if-nez v0, :cond_0

    const-string v0, "game_speed_test_interval"

    const-wide/32 v2, 0x2932e00

    invoke-direct {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSettingsDataLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->hasInitStInterval:Z

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J

    :cond_0
    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeedTestTcpIps()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "game_speed_test_tip"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSettingsDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeedTestUdpIps()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "game_speed_test_uip"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSettingsDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSuid()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "game_suid"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSettingsDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUploadStasticInterval()I
    .locals 2

    const v0, 0x927c0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x493e0

    :cond_0
    return v0
.end method

.method public declared-synchronized resetSuid()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    const-string v0, "game_suid"

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateConfig(JLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "ConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update config from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jsonConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_2

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J

    const-string v0, "game_config_time_stamp"

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->configTimeStamp:J

    invoke-direct {p0, v0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataLong(Ljava/lang/String;J)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->updateHeartBeatInterval(J)V

    const-string v1, "st"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "intl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->updateSpeedTestInterval(J)V

    const-string v2, "tip"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->updateSpeedTestTcpIps(Ljava/lang/String;)V

    const-string v2, "uip"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->updateSpeedTestUdpIps(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    const-string v1, "engineConfRatio"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->engineConfigRatio:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "ConfigManager"

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->engineConfigRatio:F
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "ConfigManager"

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSuid(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    const-string v0, "game_suid"

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->setSettingsDataString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
