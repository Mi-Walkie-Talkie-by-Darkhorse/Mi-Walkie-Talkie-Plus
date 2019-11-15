.class public Lcom/mi/milinkforgame/sdk/config/ExtraConfig;
.super Ljava/lang/Object;
.source "ExtraConfig.java"


# static fields
.field public static EXTRA_DATAV1:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static currentConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mnsSharePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v0, "extra_dataV1"

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->EXTRA_DATAV1:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    const-string v0, "mns_share_data"

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->mnsSharePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkExpiredBssid(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x9a7ec800L

    const/4 v12, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-ne v12, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->mnsSharePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v2, "check_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSetting()Lcom/mi/milinkforgame/sdk/config/Settings;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "ClearExpireOperator"

    invoke-virtual {v2, v3, v0, v1}, Lcom/mi/milinkforgame/sdk/config/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v2, v0

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v7, v1

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-lez v1, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_5
    move-wide v2, v0

    goto :goto_1
.end method

.method public static declared-synchronized readConfig()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v3, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->EXTRA_DATAV1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    :goto_1
    monitor-exit v3

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "loadConfig fail"

    invoke-static {v2, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->EXTRA_DATAV1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "loadConfig fail"

    invoke-static {v2, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_6
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_9
    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "loadConfig fail"

    invoke-static {v2, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_a
    sget-object v4, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v5, "loadConfig fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    :goto_4
    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_c
    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "loadConfig fail"

    invoke-static {v2, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_6
    :goto_6
    :try_start_e
    throw v0

    :catch_5
    move-exception v1

    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "loadConfig fail"

    invoke-static {v2, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method public static declared-synchronized readOperator()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-class v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->readConfig()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/WifiDash;->getBSSID()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    const/4 v3, 0x0

    aget-object v0, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "read wifi operator by bssid fail"

    invoke-static {v3, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized readWifiOperatorByBSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const-class v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->readConfig()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    if-eqz p0, :cond_3

    :try_start_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    const/4 v3, 0x0

    aget-object v0, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "read wifi operator by bssid fail"

    invoke-static {v3, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized writeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v3, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->readConfig()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->checkExpiredBssid(Ljava/util/Map;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->EXTRA_DATAV1:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v3

    return-void

    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    sget-object v0, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->currentConfig:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "saveConfig fail"

    invoke-static {v2, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v2, "saveConfig fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v1, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v2, "saveConfig fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :goto_4
    :try_start_9
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/mi/milinkforgame/sdk/config/ExtraConfig;->TAG:Ljava/lang/String;

    const-string v4, "saveConfig fail"

    invoke-static {v2, v4, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
