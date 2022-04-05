.class public Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;",
        ">;"
    }
.end annotation


# instance fields
.field protected final granteeId:Ljava/lang/String;

.field protected final type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;
    .locals 4

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    move-result-object p0

    invoke-direct {v3, v2, p0}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    return-object v3
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    iget-object p1, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->compareTo(Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    iget-object p1, p1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->granteeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantKey;->type:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
