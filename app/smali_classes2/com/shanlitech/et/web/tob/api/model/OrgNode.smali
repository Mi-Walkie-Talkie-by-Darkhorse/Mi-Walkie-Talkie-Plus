.class public Lcom/shanlitech/et/web/tob/api/model/OrgNode;
.super Ljava/lang/Object;
.source "OrgNode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/web/tob/api/model/OrgNode$NodeVisitor;
    }
.end annotation


# instance fields
.field private aorgID:I

.field private corgID:I

.field private corgName:Ljava/lang/String;

.field private corgParent:I

.field private createTime:Ljava/lang/String;

.field private encode:Ljava/lang/String;

.field private orgUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/shanlitech/et/web/tob/api/model/OrgNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public sortNum:I

.field private suborgNodes:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shanlitech/et/web/tob/api/model/OrgNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgParent:I

    .line 3
    iput p2, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->aorgID:I

    .line 4
    iput p3, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgID:I

    .line 5
    iput-object p4, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgName:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->encode:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->createTime:Ljava/lang/String;

    return-void
.end method

.method private getSuborgNodes()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shanlitech/et/web/tob/api/model/OrgNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->suborgNodes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->suborgNodes:Ljava/util/HashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->suborgNodes:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addSubOrg(Lcom/shanlitech/et/web/tob/api/model/OrgNode;)V
    .locals 2

    .line 1
    iput-object p0, p1, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->parent:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getCorgID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    .line 3
    iget v2, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgParent:I

    iget v3, p1, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgParent:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgID:I

    iget p1, p1, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgID:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCorgID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgID:I

    return v0
.end method

.method public getCorgName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEncode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->encode:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->orgUserList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->orgUserList:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->orgUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParentCorgId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgParent:I

    return v0
.end method

.method public getParentNode()Lcom/shanlitech/et/web/tob/api/model/OrgNode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->parent:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    return-object v0
.end method

.method public getRootNode()Lcom/shanlitech/et/web/tob/api/model/OrgNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->parent:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getRootNode()Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    move-result-object v0

    return-object v0
.end method

.method public getSortNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->sortNum:I

    return v0
.end method

.method public getSubCOrgIdSet()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSubOrg(I)Lcom/shanlitech/et/web/tob/api/model/OrgNode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    return-object p1
.end method

.method public getSubOrgCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->suborgNodes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgParent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRootNode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->parent:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeSubOrg(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->parent:Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    .line 4
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOrgUserList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getOrgUserList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->sortNum:I

    return-void
.end method

.method public setSuborgNodes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/tob/api/model/OrgNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    .line 4
    invoke-virtual {p0, v0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->addSubOrg(Lcom/shanlitech/et/web/tob/api/model/OrgNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrgNode{corgParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgParent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aorgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->aorgID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", corgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", corgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->corgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", encode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->encode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", suborgNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->isRootNode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orgUserList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getOrgUserList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traversal(Lcom/shanlitech/et/web/tob/api/model/OrgNode$NodeVisitor;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p1, v1}, Lcom/shanlitech/et/web/tob/api/model/OrgNode$NodeVisitor;->onVisit(Lcom/shanlitech/et/web/tob/api/model/OrgNode;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-direct {v1}, Lcom/shanlitech/et/web/tob/api/model/OrgNode;->getSuborgNodes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shanlitech/et/web/tob/api/model/OrgNode;

    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
