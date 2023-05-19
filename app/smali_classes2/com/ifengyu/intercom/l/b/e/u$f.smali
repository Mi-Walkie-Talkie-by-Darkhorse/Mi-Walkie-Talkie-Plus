.class Lcom/ifengyu/intercom/l/b/e/u$f;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->T(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Z

.field final synthetic d:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    iput-boolean p4, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->c:Z

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/blelib/b/c;-><init>(J)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/u;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAllRemoteChannel fail, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_SYNC_REMOTE_CHANNEL_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    const-string v1, "ACTION_SYNC_REMOTE_CHANNEL_END"

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/u;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync remote frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->a()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->k(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/a/b;->g(Z)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v2}, Lcom/ifengyu/intercom/l/b/e/u;->l(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->c:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->Q()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    invoke-direct {v2, v1, p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$f;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
