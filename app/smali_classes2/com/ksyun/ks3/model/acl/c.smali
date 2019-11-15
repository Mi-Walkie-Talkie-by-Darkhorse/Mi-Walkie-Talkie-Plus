.class public Lcom/ksyun/ks3/model/acl/c;
.super Ljava/lang/Object;
.source "Grant.java"


# instance fields
.field private a:Lcom/ksyun/ks3/model/acl/d;

.field private b:Lcom/ksyun/ks3/model/acl/Permission;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    iput-object v0, p0, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    return-void
.end method


# virtual methods
.method public a()Lcom/ksyun/ks3/model/acl/d;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    return-object v0
.end method

.method public b()Lcom/ksyun/ks3/model/acl/Permission;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/ksyun/ks3/model/acl/c;

    iget-object v2, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    iget-object v3, p1, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    iget-object v3, p1, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v1}, Lcom/ksyun/ks3/model/acl/Permission;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grant [grantee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/ks3/model/acl/c;->a:Lcom/ksyun/ks3/model/acl/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/ks3/model/acl/c;->b:Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
