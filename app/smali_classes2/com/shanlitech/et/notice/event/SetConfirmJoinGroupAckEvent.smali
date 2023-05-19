.class public Lcom/shanlitech/et/notice/event/SetConfirmJoinGroupAckEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "SetConfirmJoinGroupAckEvent.java"


# instance fields
.field public gid:J

.field public need_confirm:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/SetConfirmJoinGroupAckEvent;->gid:J

    .line 3
    iput p3, p0, Lcom/shanlitech/et/notice/event/SetConfirmJoinGroupAckEvent;->need_confirm:I

    return-void
.end method
