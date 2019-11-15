.class public Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;
.super Ljava/lang/Object;
.source "TrafficMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficMonitor"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;


# instance fields
.field private volatile mIsStarted:Z

.field private final mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->sInstance:Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mIsStarted:Z

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->sInstance:Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;

    return-object v0
.end method


# virtual methods
.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mIsStarted:Z

    return-void
.end method

.method public print()V
    .locals 11

    const/4 v0, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "startTime:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->createDataFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mStartTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/data/Const;->isMnsCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v1, v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    add-int/2addr v7, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v0, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    add-int/2addr v6, v0

    move v0, v2

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    :goto_1
    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v10, ".do"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v1, v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    add-int/2addr v3, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v0, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    add-int/2addr v2, v0

    move v0, v2

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v1, v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    add-int/2addr v5, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v0, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    add-int/2addr v4, v0

    move v0, v2

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto :goto_1

    :cond_2
    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{mlinkCount:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mlinkTotalSize:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{otherCount:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "otherTotalSize:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{httpCount:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "httpTotalSize:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TrafficMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traffic statistic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public printDetail()V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "startTime:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->createDataFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mStartTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, " {cmd:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", count:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v1, v1, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", totalSize:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    iget v0, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TrafficMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traffic statistic detail: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mIsStarted:Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mStartTime:J

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mIsStarted:Z

    return-void
.end method

.method public traffic(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mIsStarted:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    iget v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;-><init>()V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->count:I

    iget v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;->totalSize:I

    goto :goto_0
.end method
