.class public Lcom/autonavi/ae/gmap/maploader/ProcessingTile;
.super Ljava/lang/Object;
.source "ProcessingTile.java"


# static fields
.field private static final mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/ProcessingTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCreateTime:J

.field public mKeyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mCreateTime:J

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->setParams(Ljava/lang/String;)V

    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lcom/autonavi/ae/gmap/maploader/ProcessingTile;
    .locals 1

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->setParams(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setParams(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mKeyName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mCreateTime:J

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mKeyName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mCreateTime:J

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/ProcessingTile;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
