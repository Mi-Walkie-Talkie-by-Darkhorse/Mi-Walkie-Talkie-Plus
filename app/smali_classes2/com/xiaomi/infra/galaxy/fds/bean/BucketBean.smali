.class public Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;
.super Ljava/lang/Object;


# instance fields
.field private creationTime:J

.field private name:Ljava/lang/String;

.field private numObjects:J

.field private orgId:Ljava/lang/String;

.field private usedSpace:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->creationTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumObjects()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->numObjects:J

    return-wide v0
.end method

.method public getOrgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->orgId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->usedSpace:J

    return-wide v0
.end method

.method public setCreationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->creationTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumObjects(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->numObjects:J

    return-void
.end method

.method public setOrgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->orgId:Ljava/lang/String;

    return-void
.end method

.method public setUsedSpace(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/bean/BucketBean;->usedSpace:J

    return-void
.end method
