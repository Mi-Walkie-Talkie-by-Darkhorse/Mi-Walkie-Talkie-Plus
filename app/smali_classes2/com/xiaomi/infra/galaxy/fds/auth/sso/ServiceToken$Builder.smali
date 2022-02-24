.class public Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
.super Ljava/lang/Object;
.source "ServiceToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;

    invoke-direct {v0}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->tsl:Z

    invoke-static {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->access$002(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;Z)Z

    .line 3
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->uid:J

    invoke-static {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->access$102(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;J)J

    .line 4
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->secret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->access$202(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->access$302(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;J)J

    .line 6
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->access$402(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->developerId:J

    invoke-static {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;->access$502(Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken;J)J

    return-object v0
.end method

.method public developerId(J)Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->developerId:J

    return-object p0
.end method

.method public secret(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->secret:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->timestamp:J

    return-object p0
.end method

.method public tsl(Z)Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->tsl:Z

    return-object p0
.end method

.method public uid(J)Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->uid:J

    return-object p0
.end method

.method public version(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/ServiceToken$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
