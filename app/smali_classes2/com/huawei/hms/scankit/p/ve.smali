.class public Lcom/huawei/hms/scankit/p/ve;
.super Ljava/lang/Object;
.source "ParticleAnimators.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/te;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/te;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ve;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/qe;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ve;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/te;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/hms/scankit/p/te;->a(Lcom/huawei/hms/scankit/p/qe;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/te;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ve;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ve;->a:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ve;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
