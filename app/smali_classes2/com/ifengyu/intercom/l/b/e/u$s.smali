.class Lcom/ifengyu/intercom/l/b/e/u$s;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$s;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    const-string v0, "ACTION_CANCEL_CH_TO_STATE"

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$s;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$s;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result p1

    const-string v0, "ACTION_CANCEL_CH_TO_STATE"

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$s;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$s;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
