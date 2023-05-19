.class Lcom/ifengyu/intercom/l/b/e/u$n;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->p0(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$n;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

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

    const-string v2, "update device vox failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION_UPDATE_DEVICE_VOX"

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$n;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$n;->c:Lcom/ifengyu/intercom/l/b/e/u;

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

    move-result v0

    const-string v1, "ACTION_UPDATE_DEVICE_VOX"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$n;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/e/u;->e(Lcom/ifengyu/intercom/l/b/e/u;)Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->setFrom(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$n;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$n;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/u;->g(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/common/model/OperationResult;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
