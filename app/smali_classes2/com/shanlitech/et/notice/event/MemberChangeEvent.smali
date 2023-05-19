.class public Lcom/shanlitech/et/notice/event/MemberChangeEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "MemberChangeEvent.java"


# instance fields
.field private addList:[Lcom/shanlitech/et/model/Member;

.field private gid:J

.field private joinList:[J

.field private leftList:[J

.field private removeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J[Lcom/shanlitech/et/model/Member;Ljava/util/ArrayList;[J[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Lcom/shanlitech/et/model/Member;",
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;[J[J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->removeList:Ljava/util/ArrayList;

    .line 3
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->gid:J

    .line 4
    iput-object p3, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->addList:[Lcom/shanlitech/et/model/Member;

    .line 5
    iput-object p4, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->removeList:Ljava/util/ArrayList;

    .line 6
    iput-object p5, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->joinList:[J

    .line 7
    iput-object p6, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->leftList:[J

    return-void
.end method


# virtual methods
.method public getAddList()[Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->addList:[Lcom/shanlitech/et/model/Member;

    return-object v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->gid:J

    return-wide v0
.end method

.method public getJoinList()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->joinList:[J

    return-object v0
.end method

.method public getLeftList()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->leftList:[J

    return-object v0
.end method

.method public getRemoveList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->removeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAddList([Lcom/shanlitech/et/model/Member;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->addList:[Lcom/shanlitech/et/model/Member;

    return-void
.end method

.method public setGid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->gid:J

    return-void
.end method

.method public setJoinList([J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->joinList:[J

    return-void
.end method

.method public setLeftList([J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->leftList:[J

    return-void
.end method

.method public setRemoveList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/MemberChangeEvent;->removeList:Ljava/util/ArrayList;

    return-void
.end method
