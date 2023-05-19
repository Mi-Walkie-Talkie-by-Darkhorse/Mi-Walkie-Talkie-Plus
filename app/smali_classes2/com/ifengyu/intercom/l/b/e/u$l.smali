.class Lcom/ifengyu/intercom/l/b/e/u$l;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->A(Ljava/util/LinkedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/LinkedList;

.field final synthetic d:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->d:Lcom/ifengyu/intercom/l/b/e/u;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->c:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const-string v1, "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->m(Lcom/ifengyu/intercom/l/b/e/u;Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->d:Lcom/ifengyu/intercom/l/b/e/u;

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/b/e/u;->A(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$l;->d:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v1, 0x2

    const-string v2, "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
