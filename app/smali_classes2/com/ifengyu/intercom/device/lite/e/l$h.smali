.class Lcom/ifengyu/intercom/device/lite/e/l$h;
.super Lcom/ifengyu/blelib/b/c;
.source "LiteViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/e/l;->s(Ljava/util/LinkedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/LinkedList;

.field final synthetic d:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/e/l;Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->c:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->i(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f110200

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->d(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->g(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/a/a;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/lite/e/l;->s(Ljava/util/LinkedList;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$h;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->i(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const v0, 0x7f110200

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
