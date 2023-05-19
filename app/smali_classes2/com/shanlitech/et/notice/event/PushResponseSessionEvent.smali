.class public Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "PushResponseSessionEvent.java"


# instance fields
.field private final accept:Z

.field private final gid:J

.field private final reason:I

.field private final uid:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->gid:J

    .line 3
    iput-wide p3, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->uid:J

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->accept:Z

    .line 5
    iput p6, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->reason:I

    return-void
.end method


# virtual methods
.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->gid:J

    return-wide v0
.end method

.method public getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->reason:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->uid:J

    return-wide v0
.end method

.method public isAccept()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/notice/event/PushResponseSessionEvent;->accept:Z

    return v0
.end method
