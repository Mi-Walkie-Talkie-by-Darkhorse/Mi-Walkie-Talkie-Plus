.class public Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;
.super Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;
.source "InternalDataMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InternalDataMonitor"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->sInstance:Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "InternalDataMonitor"

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getUploadStasticInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->setUploadInterval(I)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->sInstance:Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    return-object v0
.end method


# virtual methods
.method protected doPostData()V
    .locals 7

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InternalDataMonitor"

    const-string v1, "doPostData start, app not login and map is empty"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "InternalDataMonitor"

    const-string v1, "doPostData start, app not login but map has content, need doPostData"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalDataMonitor"

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

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

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

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v3

    const-string v4, "c.do"

    iget v0, v0, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;->compressLength:I

    invoke-virtual {v3, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->print()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->printDetail()V

    if-eqz v2, :cond_3

    const-string v0, "InternalDataMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPostData use host report succeed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "InternalDataMonitor"

    const-string v2, "doPostData use host report failed"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_1
    new-instance v5, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v5}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    const-string v0, "http://42.62.94.67/c.do\u200b"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "d.g.mi.com"

    invoke-static/range {v0 .. v5}, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v1

    const-string v2, "c.do"

    iget v3, v5, Lcom/mi/milinkforgame/sdk/base/os/SimpleRequest$LengthPair;->compressLength:I

    invoke-virtual {v1, v2, v3}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->print()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->printDetail()V

    if-eqz v0, :cond_4

    const-string v1, "InternalDataMonitor"

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

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "InternalDataMonitor"

    const-string v1, "doPostData use ip report failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "InternalDataMonitor"

    const-string v1, "doPostData use host and ip failed"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public doPostDataAtOnce()V
    .locals 4

    const-string v0, "InternalDataMonitor"

    const-string v1, "doPostDataAtOnce()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->removeMessageUploadData()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->sendMessageUploadDataDelayed(J)V

    return-void
.end method

.method protected toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 26
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

    const-string v7, ""

    if-eqz p1, :cond_d

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "ac"

    const-string v5, "mlink_cmd"

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appid"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vid"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cversion"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mversion"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getMiLinkVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sversion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "did"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device;->getInstance()Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->miuiSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dinfo"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "channel"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "cmd"

    invoke-virtual {v11, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move v5, v4

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;

    iget-boolean v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    add-int/lit8 v6, v6, 0x1

    iget-wide v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-ltz v21, :cond_0

    iget-wide v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_0
    const-string v21, "milink.handshake"

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->clientIp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v4, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->clientIsp:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v4, v5

    move v5, v6

    :goto_2
    move v6, v5

    move v5, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "apn"

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v22, "at"

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "accip"

    iget-object v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    const-string v22, "accport"

    iget v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v22, "errCode"

    iget v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v22, "seq"

    iget-wide v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v22, "waste"

    iget-wide v0, v4, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_5
    const-string v4, "successTimes"

    invoke-virtual {v11, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_6

    const-string v4, "successWasteArray"

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7

    const-string v4, "successIp"

    invoke-virtual {v11, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, "successPort"

    invoke-virtual {v11, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_9

    const-string v4, "successApn"

    invoke-virtual {v11, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_a

    const-string v4, "successApnType"

    move-object/from16 v0, v16

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v4, "clientIp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_c

    const-string v4, "clientIsp"

    move-object/from16 v0, v18

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v4, "failedTimes"

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "failedInfo"

    move-object/from16 v0, v19

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v5, "InternalDataMonitor"

    const-string v6, "toJson"

    invoke-static {v5, v6, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    return-object v7

    :cond_e
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_f

    const-string v4, "data"

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :goto_4
    move-object v7, v4

    goto :goto_3

    :cond_f
    move-object v4, v7

    goto :goto_4
.end method
