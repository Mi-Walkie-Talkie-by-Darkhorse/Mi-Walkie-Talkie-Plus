.class Lcom/ifengyu/intercom/device/lite/e/l$f;
.super Lcom/ifengyu/blelib/b/c;
.source "LiteViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/e/l;->H(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/e/l;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    iput p2, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->c:I

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

    const-string v2, "query channel failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->f(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const/4 v0, 0x0

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

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->d(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->e(Lcom/ifengyu/intercom/device/lite/e/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/l/a/a/a;->e(Ljava/lang/Integer;Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->e(Lcom/ifengyu/intercom/device/lite/e/l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->f(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->e(Lcom/ifengyu/intercom/device/lite/e/l;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    iget v0, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/lite/e/l;->H(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/e/l$f;->d:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->f(Lcom/ifengyu/intercom/device/lite/e/l;)Landroidx/lifecycle/o;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
