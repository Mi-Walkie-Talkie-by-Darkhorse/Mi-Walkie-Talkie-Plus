.class public Lcom/shanlitech/et/notice/event/StartSessionAckEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "StartSessionAckEvent.java"


# instance fields
.field private gid:J

.field private final reason:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->gid:J

    .line 3
    iput p3, p0, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->reason:I

    return-void
.end method


# virtual methods
.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->gid:J

    return-wide v0
.end method

.method public getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->reason:I

    return v0
.end method
