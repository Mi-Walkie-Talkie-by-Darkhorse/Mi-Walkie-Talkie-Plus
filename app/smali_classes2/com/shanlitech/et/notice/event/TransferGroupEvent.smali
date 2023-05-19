.class public Lcom/shanlitech/et/notice/event/TransferGroupEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "TransferGroupEvent.java"


# instance fields
.field private error:I

.field private gid:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/notice/event/TransferGroupEvent;->error:I

    .line 3
    iput-wide p2, p0, Lcom/shanlitech/et/notice/event/TransferGroupEvent;->gid:J

    return-void
.end method


# virtual methods
.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/TransferGroupEvent;->gid:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/TransferGroupEvent;->error:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
