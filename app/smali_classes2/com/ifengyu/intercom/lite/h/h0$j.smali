.class Lcom/ifengyu/intercom/lite/h/h0$j;
.super Lcom/ifengyu/blelib/c/e;
.source "LiteViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/h/h0;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/h/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$j;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/lite/h/h0;->o()Ljava/lang/String;

    move-result-object p1

    const-string v0, "query device param failed"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/lite/h/h0;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0$j;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g(Lcom/ifengyu/intercom/lite/h/h0;)Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->setFrom(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/lite/h/h0;->o()Ljava/lang/String;

    move-result-object p1

    const-string v0, "query device param failed"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
