.class public Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResultList;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlRootElement;
.end annotation


# instance fields
.field private uploadPartResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;",
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

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResultList;->uploadPartResultList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUploadPartResult(Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResultList;->uploadPartResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getUploadPartResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResultList;->uploadPartResultList:Ljava/util/List;

    return-object v0
.end method

.method public setUploadPartResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/result/UploadPartResultList;->uploadPartResultList:Ljava/util/List;

    return-void
.end method
