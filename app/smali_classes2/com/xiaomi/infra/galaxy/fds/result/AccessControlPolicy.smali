.class public Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlRootElement;
.end annotation


# instance fields
.field private accessControlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;->owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;

    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;->accessControlList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAccessControlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;->accessControlList:Ljava/util/List;

    return-object v0
.end method

.method public getOwner()Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;->owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;

    return-object v0
.end method

.method public setAccessControlList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/bean/GrantBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;->accessControlList:Ljava/util/List;

    return-void
.end method

.method public setOwner(Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/AccessControlPolicy;->owner:Lcom/xiaomi/infra/galaxy/fds/bean/OwnerBean;

    return-void
.end method
