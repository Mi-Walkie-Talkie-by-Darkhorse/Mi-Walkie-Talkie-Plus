.class public Lcom/xiaomi/mistatistic/sdk/controller/g;
.super Ljava/lang/Object;
.source "HttpEventController.java"


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/g;


# instance fields
.field private b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/g$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/g$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/g;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/g;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/g;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/j$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "url"

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://data.mistat.xiaomi.com/micrash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://data.mistat.xiaomi.com/mistats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://data.mistat.xiaomi.com/mistats/v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://abtest.mistat.xiaomi.com/experiments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://10.99.168.145:8097/realtime_network"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://data.mistat.xiaomi.com/realtime_network"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    return-void
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V
    .locals 5

    const/16 v4, 0x3ff

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "add http event without initialization."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "disabled the http event upload"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isSelfStats()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    invoke-interface {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;->onEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->e()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "app_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_package"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_uuid"

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "net_value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sample_rate"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "delay"

    const v3, 0x493e0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ban_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "rt_upload_rate"

    invoke-static {v0, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_upload_delay"

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_ban_time"

    invoke-static {v0, v1, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_ban_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_upload_rate"

    const/16 v4, 0x2710

    invoke-static {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_update_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_upload_delay"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
