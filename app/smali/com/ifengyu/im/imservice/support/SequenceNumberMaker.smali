.class public Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;
.super Ljava/lang/Object;
.source "SequenceNumberMaker.java"


# static fields
.field private static maker:Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;


# instance fields
.field private volatile mSquence:S

.field private volatile preMsgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->maker:Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->mSquence:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->preMsgId:J

    return-void
.end method

.method public static getInstance()Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->maker:Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;

    return-object v0
.end method


# virtual methods
.method public isFailure(I)Z
    .locals 1

    const v0, 0x55d4a80

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public make()S
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-short v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->mSquence:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->mSquence:S

    iget-short v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->mSquence:S

    const/16 v1, 0x7fff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->mSquence:S

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-short v0, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->mSquence:S

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public makelocalUniqueMsgId()I
    .locals 6

    const v0, 0x55d4a80

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x989680

    rem-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v1, v0

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->preMsgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    const v2, 0x5f5e100

    if-lt v1, v2, :cond_0

    :goto_0
    int-to-long v2, v0

    iput-wide v2, p0, Lcom/ifengyu/im/imservice/support/SequenceNumberMaker;->preMsgId:J

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
