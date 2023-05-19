.class public Lcom/shanlitech/et/model/MemberList;
.super Ljava/lang/Object;
.source "MemberList.java"

# interfaces
.implements Lcom/shanlitech/et/model/slinterface/ETList;
.implements Lcom/shanlitech/et/core/sl/model/list/IMemberList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shanlitech/et/model/slinterface/ETList<",
        "Lcom/shanlitech/et/model/Member;",
        ">;",
        "Lcom/shanlitech/et/core/sl/model/list/IMemberList;"
    }
.end annotation


# static fields
.field public static index:I = 0x0

.field private static selectMe:Z = true


# instance fields
.field protected gid:J

.field private inGroupMembers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentMember:Lcom/shanlitech/et/model/Member;

.field private myNameInGroup:Ljava/lang/String;

.field private offlineMembers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation
.end field

.field private outGroupMembers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    .line 3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    .line 4
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    .line 5
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->myNameInGroup:Ljava/lang/String;

    .line 7
    iput-wide p1, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/model/Group;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    .line 10
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    .line 11
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    .line 12
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->myNameInGroup:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    return-void
.end method


# virtual methods
.method public add(Lcom/shanlitech/et/model/Member;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shanlitech/et/model/Member;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/MemberList;->addAll([Lcom/shanlitech/et/model/Member;)Lcom/shanlitech/et/model/MemberList;

    return-void
.end method

.method public varargs addAll([Lcom/shanlitech/et/model/Member;)Lcom/shanlitech/et/model/MemberList;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shanlitech/et/model/MemberList;->addAll(Ljava/util/List;)V

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/Member;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Member;

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shanlitech/et/model/MemberList;->myNameInGroup:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shanlitech/et/model/MemberList;->mCurrentMember:Lcom/shanlitech/et/model/Member;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->online()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/shanlitech/et/b/c/c;->inGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAll: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PocGroupManager"

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs addContacts(Ljava/lang/String;[J)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p1, 0x0

    return p1
.end method

.method public varargs addUids([J)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, -0x1

    .line 4
    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    return-void
.end method

.method public varargs delContacts([J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public first()Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->first()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/shanlitech/et/model/Member;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Member;

    return-object p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Member;

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Member;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getAccount()Lcom/shanlitech/et/model/Account;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAllMembers()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v4, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shanlitech/et/model/Member;

    iget-wide v5, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    invoke-virtual {v4, v5, v6}, Lcom/shanlitech/et/model/Member;->build(J)Lcom/shanlitech/et/model/Member;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 5
    iget-object v4, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shanlitech/et/model/Member;

    iget-wide v5, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    invoke-virtual {v4, v5, v6}, Lcom/shanlitech/et/model/Member;->build(J)Lcom/shanlitech/et/model/Member;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_2

    .line 7
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    iget-wide v4, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    invoke-virtual {v3, v4, v5}, Lcom/shanlitech/et/model/Member;->build(J)Lcom/shanlitech/et/model/Member;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lcom/shanlitech/et/b/b;->b()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, Lcom/shanlitech/et/b/b;->b()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getInGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getMember(J)Lcom/shanlitech/et/model/Member;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->mCurrentMember:Lcom/shanlitech/et/model/Member;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shanlitech/et/model/MemberList;->mCurrentMember:Lcom/shanlitech/et/model/Member;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Member;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Member;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/shanlitech/et/model/Member;

    :cond_1
    return-object v0
.end method

.method public getMyNameInGroup()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->u(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->myNameInGroup:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOfflineCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getOutGroupCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method public hasOhters()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public hasUser(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 5
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_6

    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    move v0, v1

    :cond_6
    return v0
.end method

.method public inUser(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public index()I
    .locals 1

    .line 1
    sget v0, Lcom/shanlitech/et/model/MemberList;->index:I

    return v0
.end method

.method public varargs joinUids([J)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joinUids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PocGroupManager"

    invoke-static {v3, v0}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    aget-wide v5, p1, v4

    .line 3
    iget-object v7, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shanlitech/et/model/Member;

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v7, :cond_2

    .line 4
    iget-object v7, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shanlitech/et/model/Member;

    if-eqz v7, :cond_1

    const-string v10, "joinUids: \u4ece\u79bb\u7ebf\u961f\u5217\u627e\u5230\u4e86"

    .line 5
    invoke-static {v3, v10}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v7, v9}, Lcom/shanlitech/et/model/Member;->setInGroup(I)V

    .line 7
    invoke-virtual {v7}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 8
    invoke-virtual {v7}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v9

    iput v8, v9, Lcom/shanlitech/et/model/User;->online:I

    .line 9
    :cond_0
    iget-object v8, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 10
    iget-object v7, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "joinUids: \u6ca1\u627e\u5230"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v10, "joinUids: \u4ece\u4e0d\u5728\u7ec4\u961f\u5217\u627e\u5230\u4e86"

    .line 12
    invoke-static {v3, v10}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7, v9}, Lcom/shanlitech/et/model/Member;->setInGroup(I)V

    .line 14
    invoke-virtual {v7}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 15
    invoke-virtual {v7}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v9

    iput v8, v9, Lcom/shanlitech/et/model/User;->online:I

    .line 16
    :cond_3
    iget-object v8, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 17
    iget-object v7, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public last()Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->last()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public varargs leaveUids([J)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-wide v2, p1, v1

    .line 2
    iget-object v4, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shanlitech/et/model/Member;

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    .line 3
    invoke-virtual {v4, v5}, Lcom/shanlitech/et/model/Member;->setInGroup(I)V

    .line 4
    iget-object v5, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 5
    invoke-virtual {v4}, Lcom/shanlitech/et/model/Member;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/shanlitech/et/model/User;->online()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v5, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v5, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public me()Lcom/shanlitech/et/model/Member;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->mCurrentMember:Lcom/shanlitech/et/model/Member;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/shanlitech/et/model/MemberList;->gid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/model/Member;->build(J)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public next()Lcom/shanlitech/et/model/Member;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget v0, Lcom/shanlitech/et/model/MemberList;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    .line 6
    :cond_1
    sget v0, Lcom/shanlitech/et/model/MemberList;->index:I

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->next()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lcom/shanlitech/et/model/Member;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget v0, Lcom/shanlitech/et/model/MemberList;->index:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shanlitech/et/model/MemberList;->index:I

    .line 5
    :cond_1
    sget v0, Lcom/shanlitech/et/model/MemberList;->index:I

    invoke-virtual {p0, v0}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->previous()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeUids([J)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 2
    iget-object v4, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3
    iget-object v4, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 4
    iget-object v4, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public select(I)Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/model/MemberList;->get(I)Lcom/shanlitech/et/model/Member;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setMyNameInGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/MemberList;->myNameInGroup:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public startSelect()Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->first()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startSelect()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->startSelect()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MemberList>"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v2, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    iget-object v2, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uidArray()[J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/MemberList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    invoke-virtual {v3}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_1
    if-ge v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    invoke-virtual {v3}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_2
    if-ge v2, v1, :cond_2

    .line 7
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    invoke-virtual {v3}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public varargs updateUser([Lcom/shanlitech/et/model/User;)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v4

    .line 3
    invoke-virtual {v3}, Lcom/shanlitech/et/model/User;->online()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    if-eqz v3, :cond_2

    .line 5
    iget-object v6, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 6
    iget-object v6, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v4, 0x2

    .line 7
    invoke-virtual {v3, v4}, Lcom/shanlitech/et/model/Member;->setInGroup(I)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shanlitech/et/model/Member;

    if-eqz v3, :cond_2

    .line 10
    iget-object v6, p0, Lcom/shanlitech/et/model/MemberList;->outGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 11
    invoke-virtual {v3, v1}, Lcom/shanlitech/et/model/Member;->setInGroup(I)V

    .line 12
    iget-object v6, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v6, p0, Lcom/shanlitech/et/model/MemberList;->inGroupMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 14
    invoke-virtual {v3, v1}, Lcom/shanlitech/et/model/Member;->setInGroup(I)V

    .line 15
    iget-object v6, p0, Lcom/shanlitech/et/model/MemberList;->offlineMembers:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
