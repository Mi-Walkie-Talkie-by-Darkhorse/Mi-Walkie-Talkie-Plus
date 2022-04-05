.class Lcom/ifengyu/intercom/lite/h/h0$g;
.super Lcom/ifengyu/blelib/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/h/h0;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/h/h0;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    iput p2, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->c:I

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/lite/h/h0;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query channel failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->b(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    const/4 v0, 0x0

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

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;-><init>(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->c(Lcom/ifengyu/intercom/lite/h/h0;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/a/a;->a(Ljava/lang/Integer;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->c(Lcom/ifengyu/intercom/lite/h/h0;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->b(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/h/h0;->c(Lcom/ifengyu/intercom/lite/h/h0;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    iget v0, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->b(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$g;->d:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->b(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
