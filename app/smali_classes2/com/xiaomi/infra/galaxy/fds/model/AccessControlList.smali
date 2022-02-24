.class public Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;
.super Ljava/lang/Object;
.source "AccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;,
        Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;,
        Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;,
        Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;,
        Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    }
.end annotation


# instance fields
.field private final acls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->acls:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addGrant(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->getGrantKey()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->acls:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->acls:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->getPermission()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->getPermission()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result p1

    or-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->acls:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addGrants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    .line 2
    invoke-virtual {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->addGrant(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkGroupReadPermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->GROUP:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->checkPermission(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)Z

    move-result p1

    return p1
.end method

.method public checkGroupWritePermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->GROUP:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->checkPermission(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)Z

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->acls:Ljava/util/Map;

    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/2addr p1, p3

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public checkUserReadPermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->USER:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->checkPermission(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)Z

    move-result p1

    return p1
.end method

.method public checkUserWritePermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->USER:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->checkPermission(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)Z

    move-result p1

    return p1
.end method

.method public getGrantList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;->acls:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->FULL_CONTROL:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {v5}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 5
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    sget-object v4, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->FULL_CONTROL:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;-><init>(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->values()[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 7
    invoke-virtual {v7}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result v8

    sget-object v9, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->FULL_CONTROL:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {v9}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result v9

    if-eq v8, v9, :cond_2

    invoke-virtual {v7}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->getValue()I

    move-result v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/2addr v8, v9

    if-lez v8, :cond_2

    .line 8
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    invoke-direct {v8, v3, v7}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;-><init>(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
