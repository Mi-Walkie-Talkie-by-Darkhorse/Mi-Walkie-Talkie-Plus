.class public Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "GroupSortChangedEvent.java"


# instance fields
.field private gids:[J

.field private sort_idx:[J


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;->gids:[J

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;->sort_idx:[J

    return-void
.end method


# virtual methods
.method public getGids()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;->gids:[J

    return-object v0
.end method

.method public getSortIdx()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/GroupSortChangedEvent;->sort_idx:[J

    return-object v0
.end method
