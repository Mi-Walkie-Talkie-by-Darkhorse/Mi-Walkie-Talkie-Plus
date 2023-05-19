.class public Lcom/xiaomi/infra/galaxy/fds/bean/Quota;
.super Ljava/lang/Object;
.source "Quota.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;
    }
.end annotation


# instance fields
.field private action:Lcom/xiaomi/infra/galaxy/fds/Action;

.field private type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;Lcom/xiaomi/infra/galaxy/fds/Action;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->action:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->value:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;

    .line 3
    iget-wide v2, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->value:J

    iget-wide v4, p1, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->value:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->action:Lcom/xiaomi/infra/galaxy/fds/Action;

    iget-object v3, p1, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->action:Lcom/xiaomi/infra/galaxy/fds/Action;

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    iget-object p1, p1, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getAction()Lcom/xiaomi/infra/galaxy/fds/Action;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->action:Lcom/xiaomi/infra/galaxy/fds/Action;

    return-object v0
.end method

.method public getType()Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->action:Lcom/xiaomi/infra/galaxy/fds/Action;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->value:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public setAction(Lcom/xiaomi/infra/galaxy/fds/Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->action:Lcom/xiaomi/infra/galaxy/fds/Action;

    return-void
.end method

.method public setType(Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->type:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    return-void
.end method

.method public setValue(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota;->value:J

    return-void
.end method
