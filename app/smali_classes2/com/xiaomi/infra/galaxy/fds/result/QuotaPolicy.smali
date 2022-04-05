.class public Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlRootElement;
.end annotation


# instance fields
.field private quotas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/Quota;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addQuota(Lcom/xiaomi/infra/galaxy/fds/bean/Quota;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    iget-object p1, p1, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getQuotas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/Quota;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setQuotas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/Quota;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/QuotaPolicy;->quotas:Ljava/util/List;

    return-void
.end method
