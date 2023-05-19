.class public abstract Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onProgress(JJ)V
.end method

.method public progressInterval()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method
