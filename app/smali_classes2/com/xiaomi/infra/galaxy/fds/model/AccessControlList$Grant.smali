.class public Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;
.super Ljava/lang/Object;
.source "AccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Grant"
.end annotation


# instance fields
.field private granteeId:Ljava/lang/String;

.field private permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field private type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;


# direct methods
.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-direct {p0, v0, p2, p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->USER:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    .line 6
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;
    .locals 4

    const-string v0, ":"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    invoke-static {v2}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->fromString(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;-><init>(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    .line 3
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    iget-object v3, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    if-eq v2, v3, :cond_4

    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    iget-object p1, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method protected getGrantKey()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    return-object v0
.end method

.method public getGranteeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-object v0
.end method

.method public getType()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setGranteeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->granteeId:Ljava/lang/String;

    return-void
.end method

.method public setPermission(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-void
.end method

.method public setType(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->getGrantKey()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
