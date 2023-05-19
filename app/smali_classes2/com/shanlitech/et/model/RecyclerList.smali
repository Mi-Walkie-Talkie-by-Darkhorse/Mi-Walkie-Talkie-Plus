.class public Lcom/shanlitech/et/model/RecyclerList;
.super Ljava/util/ArrayList;
.source "RecyclerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private gid:J

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private maxCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x1c9c380

    .line 1
    invoke-direct {p0, v0}, Lcom/shanlitech/et/model/RecyclerList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/RecyclerList;->list:Ljava/util/List;

    const v0, 0x1c9c380

    .line 4
    iput v0, p0, Lcom/shanlitech/et/model/RecyclerList;->maxCount:I

    .line 5
    iput p1, p0, Lcom/shanlitech/et/model/RecyclerList;->maxCount:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/shanlitech/et/model/RecyclerList;->maxCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/shanlitech/et/model/RecyclerList;->maxCount:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/shanlitech/et/model/RecyclerList;->maxCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->removeRange(II)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/RecyclerList;->gid:J

    return-wide v0
.end method

.method public getMaxCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/RecyclerList;->maxCount:I

    return v0
.end method

.method public setGid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/RecyclerList;->gid:J

    return-void
.end method
