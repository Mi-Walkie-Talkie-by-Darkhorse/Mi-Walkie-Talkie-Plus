.class public abstract Lcom/ifengyu/im/imservice/callback/Packetlistener;
.super Ljava/lang/Object;
.source "Packetlistener.java"

# interfaces
.implements Lcom/ifengyu/im/imservice/callback/IMListener;


# instance fields
.field private createTime:J

.field private timeOut:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->timeOut:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->createTime:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->timeOut:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->createTime:J

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->createTime:J

    return-wide v0
.end method

.method public getTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->timeOut:J

    return-wide v0
.end method

.method public abstract onFaild()V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
.end method

.method public abstract onTimeout()V
.end method

.method public setCreateTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->createTime:J

    return-void
.end method

.method public setTimeOut(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/callback/Packetlistener;->timeOut:J

    return-void
.end method
