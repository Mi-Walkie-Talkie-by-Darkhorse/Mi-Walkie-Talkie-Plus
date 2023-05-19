.class public Lcom/shanlitech/et/model/HistoryList;
.super Ljava/util/ArrayList;
.source "HistoryList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/shanlitech/et/model/History;",
        ">;"
    }
.end annotation


# instance fields
.field private gid:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/model/HistoryList;->gid:J

    return-void
.end method

.method public static create(J)Lcom/shanlitech/et/model/HistoryList;
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/HistoryList;

    invoke-direct {v0, p0, p1}, Lcom/shanlitech/et/model/HistoryList;-><init>(J)V

    return-object v0
.end method

.method public static create(Lcom/shanlitech/et/model/Group;)Lcom/shanlitech/et/model/HistoryList;
    .locals 3

    .line 2
    new-instance v0, Lcom/shanlitech/et/model/HistoryList;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/model/HistoryList;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/HistoryList;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentGroupHistory()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/HistoryList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
