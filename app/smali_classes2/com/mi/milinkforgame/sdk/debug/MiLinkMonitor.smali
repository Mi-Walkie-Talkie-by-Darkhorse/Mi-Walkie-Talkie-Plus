.class public Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;
.super Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;
.source "MiLinkMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiLinkMonitor"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "MiLinkMonitor"

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getUploadStasticInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->setUploadInterval(I)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;

    return-object v0
.end method


# virtual methods
.method protected doPostData()V
    .locals 7

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiLinkMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", doPostData: dataJson="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dataJson"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    const-string v2, "http://d.g.mi.com/c.do\u200b"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4, v0}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "MiLinkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPostData use host report succeed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MiLinkMonitor"

    const-string v2, "doPostData use host report failed"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    new-instance v5, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v5}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    const-string v0, "http://42.62.94.67/c.do\u200b"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "d.g.mi.com"

    invoke-static/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "MiLinkMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPostData use ip report succeed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "MiLinkMonitor"

    const-string v1, "doPostData use ip report failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "MiLinkMonitor"

    const-string v1, "doPostData use host and ip failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public doPostDataAtOnce()V
    .locals 4

    const-string v0, "MiLinkMonitor"

    const-string v1, "doPostDataAtOnce()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->removeMessageUploadData()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->sendMessageUploadDataDelayed(J)V

    return-void
.end method

.method protected toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v5, ""

    if-eqz p1, :cond_6

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ac"

    const-string v3, "mlink_cmd"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vid"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cversion"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mversion"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getMiLinkVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "did"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device;->getInstance()Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->miuiSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dinfo"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "cmd"

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v3, v2

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;

    iget-boolean v13, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    if-eqz v13, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget-wide v14, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_3

    iget-wide v14, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move v2, v3

    move v3, v4

    :goto_2
    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "apn"

    iget-object v15, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "at"

    iget-object v15, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "accip"

    iget-object v15, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v14, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    if-lez v14, :cond_2

    const-string v14, "accport"

    iget v15, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v14, "errCode"

    iget v15, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "seq"

    iget-wide v0, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "waste"

    iget-wide v0, v2, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    move v2, v3

    move v3, v4

    goto :goto_2

    :cond_4
    const-string v2, "successTimes"

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "successWasteArray"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v2, "failedTimes"

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "failedInfo"

    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MiLinkMonitor"

    const-string v4, "toJson"

    invoke-static {v3, v4, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v5

    :cond_7
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "data"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_4
    move-object v5, v2

    goto :goto_3

    :cond_8
    move-object v2, v5

    goto :goto_4
.end method
