.class Lcom/ifengyu/intercom/device/lite/d/t$a;
.super Lcom/ifengyu/blelib/b/c;
.source "LiteUpgradeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/d/t;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/device/lite/d/t;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/d/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method

.method private synthetic e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->f(Lcom/ifengyu/intercom/device/lite/d/t;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/d/t;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ota request commend write failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ota request failed, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->e(Lcom/ifengyu/intercom/device/lite/d/t;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->d(Lcom/ifengyu/intercom/device/lite/d/t;ILjava/lang/String;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne v0, p1, :cond_0

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/device/lite/d/b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/lite/d/b;-><init>(Lcom/ifengyu/intercom/device/lite/d/t$a;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->LOW_POWER:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/d/t;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ota response low power, forbidden upgrade"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    const-string v0, "Ota request, device response LOW POWER"

    invoke-static {p1, v1, v0}, Lcom/ifengyu/intercom/device/lite/d/t;->d(Lcom/ifengyu/intercom/device/lite/d/t;ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/d/t;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ota response failed"

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t$a;->c:Lcom/ifengyu/intercom/device/lite/d/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ota request, device response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->d(Lcom/ifengyu/intercom/device/lite/d/t;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/d/t$a;->e()V

    return-void
.end method
