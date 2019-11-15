.class public abstract Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "BaseDataMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;,
        Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;
    }
.end annotation


# static fields
.field public static final RET_CODE_ABANDONED_SESSION_NOT_READY:I = 0x4

.field public static final RET_CODE_OK:I = 0x0

.field public static final RET_CODE_PING_TIME_OUT:I = 0x3

.field public static final RET_CODE_TIME_OUT:I = 0x1

.field public static final RET_CODE_TOKEN_EXPIRED:I = 0x2


# instance fields
.field protected final mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

.field protected mUploadInterval:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;-><init>(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    return-void
.end method


# virtual methods
.method public addMonitorItem(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract doPostData()V
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setUploadInterval(I)V
    .locals 4

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->removeMessageUploadData()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mTimer:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$UploadStasticDataTimer;->sendMessageUploadDataDelayed(J)V

    :cond_0
    return-void
.end method

.method protected abstract toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
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
.end method

.method public trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V
    .locals 15

    const-string v1, "mlink_cmd"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v13}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v1, "mlink_cmd"

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-virtual/range {v0 .. v15}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$1;-><init>(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    invoke-direct/range {v3 .. v19}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;-><init>(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected traceToServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;

    invoke-direct {v3}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;-><init>()V

    iput-object p4, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    sub-long v4, p8, p6

    iput-wide v4, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    if-nez p5, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    iput p5, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/NetworkDash;->getApnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    iput p3, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v0, p12

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    const-string v2, "milink.handshake"

    iget-object v4, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p14

    iput-object v0, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->clientIp:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, v3, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->clientIsp:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v3}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->addMonitorItem(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method
