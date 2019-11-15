.class public Lcom/mi/mimsgsdk/stat/StatWorker;
.super Ljava/lang/Object;
.source "StatWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;,
        Lcom/mi/mimsgsdk/stat/StatWorker$StatisticWorkerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/stat/StatWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/stat/StatWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/mi/mimsgsdk/stat/StatWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;-><init>(Lcom/mi/mimsgsdk/stat/StatWorker$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/mimsgsdk/stat/StatWorker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/StatWorker;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/stat/StatWorker;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/stat/StatWorker$StatisticWorkerHolder;->holder:Lcom/mi/mimsgsdk/stat/StatWorker;

    return-object v0
.end method

.method public static parseJsonAndSend(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    const-string v1, "has not network skip"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "logtype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized scribe type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", will delete it from DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->remove(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    const-string v2, "meet json error, will delete it from DB"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->remove(I)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseJsonAndSend json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/mimsgsdk/stat/model/AgoraLog;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->fromJsonObject(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/stat/model/AgoraLog;->toReqPacketData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v1, p1}, Lcom/mi/mimsgsdk/stat/StatWorker;->sendScribe(Lcom/mi/milinkforgame/sdk/aidl/PacketData;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->remove(I)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/mi/mimsgsdk/stat/model/CommonLog;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/stat/model/CommonLog;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mi/mimsgsdk/stat/model/CommonLog;->fromJsonObject(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/stat/model/CommonLog;->toReqPacketData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v1, p1}, Lcom/mi/mimsgsdk/stat/StatWorker;->sendScribe(Lcom/mi/milinkforgame/sdk/aidl/PacketData;II)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->remove(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/mi/mimsgsdk/stat/StatWorker;->TAG:Ljava/lang/String;

    const-string v1, "json is empty, will delete it from DB"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->remove(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static sendScribe(Lcom/mi/milinkforgame/sdk/aidl/PacketData;II)V
    .locals 2
    .param p0    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/mi/mimsgsdk/stat/StatWorker$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/mimsgsdk/stat/StatWorker$2;-><init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;II)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/stat/StatWorker$1;

    invoke-direct {v1, p2}, Lcom/mi/mimsgsdk/stat/StatWorker$1;-><init>(I)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/e;)Lrx/f;

    return-void
.end method
