.class Lcom/ifengyu/intercom/device/lite/e/l$k;
.super Lcom/ifengyu/blelib/b/c;
.source "LiteViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/e/l;->O(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/e/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$k;->c:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/e/l;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update device sq failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$k;->c:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->h(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f1102f6

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$k;->c:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->h(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f110243

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$k;->c:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->j(Lcom/ifengyu/intercom/device/lite/e/l;)Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->setFrom(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->j0(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$k;->c:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->P(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$k;->c:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->h(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f110243

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
