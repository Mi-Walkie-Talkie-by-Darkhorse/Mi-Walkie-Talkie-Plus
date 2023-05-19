.class public Lcom/shanlitech/et/model/session/SessionGroupList;
.super Ljava/util/ArrayList;
.source "SessionGroupList.java"

# interfaces
.implements Lcom/shanlitech/et/model/slinterface/ETList;
.implements Lcom/shanlitech/et/core/sl/model/list/IGroupList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/shanlitech/et/model/Group;",
        ">;",
        "Lcom/shanlitech/et/model/slinterface/ETList<",
        "Lcom/shanlitech/et/model/Group;",
        ">;",
        "Lcom/shanlitech/et/core/sl/model/list/IGroupList;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static volatile index:I

.field private static watchIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/session/SessionGroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/model/session/SessionGroupList;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shanlitech/et/model/session/SessionGroupList;->watchIDs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shanlitech/et/model/session/SessionGroupList;->uid:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shanlitech/et/model/Group;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/session/SessionGroupList;->uid:J

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/shanlitech/et/model/Group;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/model/session/SessionGroupList;->uid:J

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    if-lez v0, :cond_0

    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static getGroupByGid(J)Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object p0

    return-object p0
.end method

.method public static isWatching(J)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/session/SessionGroupList;->watchIDs:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/model/session/SessionGroupList;->watchIDs:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public first()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    .line 4
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/session/SessionGroupList;->first()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Lcom/shanlitech/et/model/Account;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGroup()Lcom/shanlitech/et/model/Group;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroup(J)Lcom/shanlitech/et/model/Group;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Group;

    .line 2
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/session/SessionGroupList;->uid:J

    return-wide v0
.end method

.method public index()I
    .locals 1

    .line 1
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    return v0
.end method

.method public last()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    .line 4
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/session/SessionGroupList;->last()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/shanlitech/et/model/Group;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    .line 4
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    .line 6
    :cond_1
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/session/SessionGroupList;->next()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lcom/shanlitech/et/model/Group;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    .line 4
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    .line 6
    :cond_1
    sget v0, Lcom/shanlitech/et/model/session/SessionGroupList;->index:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/session/SessionGroupList;->previous()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public select(I)Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public startSelect()Lcom/shanlitech/et/model/Group;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic startSelect()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/session/SessionGroupList;->startSelect()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shanlitech/et/model/session/SessionGroupList;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ">"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "count:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/watchcount:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object v1, Lcom/shanlitech/et/model/session/SessionGroupList;->watchIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/uid:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-wide v1, p0, Lcom/shanlitech/et/model/session/SessionGroupList;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/session/SessionGroupList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Group;

    const-string v2, "\n\t\r"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
