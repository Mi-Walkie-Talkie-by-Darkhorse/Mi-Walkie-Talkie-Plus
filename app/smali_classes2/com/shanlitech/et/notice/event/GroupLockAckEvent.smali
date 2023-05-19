.class public Lcom/shanlitech/et/notice/event/GroupLockAckEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "GroupLockAckEvent.java"


# instance fields
.field public gid:J

.field public result:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/GroupLockAckEvent;->gid:J

    .line 3
    iput p3, p0, Lcom/shanlitech/et/notice/event/GroupLockAckEvent;->result:I

    return-void
.end method
