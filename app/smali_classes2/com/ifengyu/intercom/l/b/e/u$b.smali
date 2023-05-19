.class Lcom/ifengyu/intercom/l/b/e/u$b;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->o()V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$b;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    const-string v0, "ACTION_INSERT_CHANNEL"

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$b;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$b;->c:Lcom/ifengyu/intercom/l/b/e/u;

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
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    const-string v1, "ACTION_INSERT_CHANNEL"

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$b;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getIsCustomCh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/l/a/a/a;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/l/a/a/b;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$b;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->i(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/l/a/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$b;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
