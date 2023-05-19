.class Lcom/ifengyu/intercom/l/b/e/u$k;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->W()V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$k;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/u;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "query device param failed"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/u;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$k;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/e/u;->e(Lcom/ifengyu/intercom/l/b/e/u;)Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->setFrom(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/u;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "query device param failed"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
