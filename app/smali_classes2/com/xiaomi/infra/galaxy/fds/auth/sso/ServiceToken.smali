.class public Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    }
.end annotation


# instance fields
.field private developerId:J

.field private secret:Ljava/lang/String;

.field private timestamp:J

.field private tsl:Z

.field private uid:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->tsl:Z

    return p1
.end method

.method static synthetic access$102(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->uid:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->secret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->timestamp:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->developerId:J

    return-wide p1
.end method


# virtual methods
.method public getDeveloperId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->developerId:J

    return-wide v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->timestamp:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->uid:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isTsl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->tsl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ServiceToken: tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->tsl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
