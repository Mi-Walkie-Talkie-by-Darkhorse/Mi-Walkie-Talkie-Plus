.class public Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;
.super Ljava/lang/Object;
.source "ObjectBean.java"


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;

.field private size:J

.field private uploadTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->size:J

    return-wide v0
.end method

.method public getUploadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->uploadTime:J

    return-wide v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->size:J

    return-void
.end method

.method public setUploadTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/ObjectBean;->uploadTime:J

    return-void
.end method
