.class Lcom/ifengyu/intercom/lite/h/h0$i;
.super Lcom/ifengyu/blelib/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/h/h0;->a(Ljava/util/Queue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Queue;

.field final synthetic d:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/h/h0;Ljava/util/Queue;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->d:Lcom/ifengyu/intercom/lite/h/h0;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->c:Ljava/util/Queue;

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->f(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    const v0, 0x7f110191

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;-><init>(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->d(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/a/a;->a(Ljava/lang/Integer;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->d:Lcom/ifengyu/intercom/lite/h/h0;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->c:Ljava/util/Queue;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->a(Ljava/util/Queue;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$i;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->f(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    const v0, 0x7f110191

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
