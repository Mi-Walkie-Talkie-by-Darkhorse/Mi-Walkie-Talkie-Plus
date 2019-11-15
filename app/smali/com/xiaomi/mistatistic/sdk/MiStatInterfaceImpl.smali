.class public Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;
.super Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.source "MiStatInterfaceImpl.java"


# static fields
.field private static mInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->mInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;
    .locals 2

    const-class v1, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->mInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->mInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->mInstance:Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public trackCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public trackCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    invoke-static {p1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public trackNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public trackStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterfaceImpl;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
