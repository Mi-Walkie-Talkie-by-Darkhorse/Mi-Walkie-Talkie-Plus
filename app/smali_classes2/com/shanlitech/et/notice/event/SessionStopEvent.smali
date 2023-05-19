.class public Lcom/shanlitech/et/notice/event/SessionStopEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "SessionStopEvent.java"


# instance fields
.field private gid:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/SessionStopEvent;->gid:J

    return-void
.end method


# virtual methods
.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/SessionStopEvent;->gid:J

    return-wide v0
.end method
