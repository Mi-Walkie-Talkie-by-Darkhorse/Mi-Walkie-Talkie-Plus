.class Lcom/ifengyu/intercom/device/lite/e/k$a;
.super Lcom/ifengyu/blelib/b/c;
.source "BatchConfigViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/e/k;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/device/lite/e/k;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k$a;->c:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k$a;->c:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->d(Lcom/ifengyu/intercom/device/lite/e/k;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f11037b

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k$a;->c:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->c(Lcom/ifengyu/intercom/device/lite/e/k;)Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/v0;->o1(Z)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k$a;->c:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->d(Lcom/ifengyu/intercom/device/lite/e/k;)Landroidx/lifecycle/o;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/k$a;->c:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->d(Lcom/ifengyu/intercom/device/lite/e/k;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f11037b

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
