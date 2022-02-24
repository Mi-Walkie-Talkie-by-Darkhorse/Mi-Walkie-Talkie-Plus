.class Lcom/ifengyu/intercom/lite/h/h0$h;
.super Lcom/ifengyu/blelib/c/e;
.source "LiteViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/h/h0;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$h;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/lite/h/h0;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update channel failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$h;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->e(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    const v0, 0x7f1101a5

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$h;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->e(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    const v0, 0x7f1101ad

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    const v2, 0x7f1101ad

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->hasChannelInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;->getChannelInfo()Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;-><init>(Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$h;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->d(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/a/a;->a(Ljava/lang/Integer;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$h;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->e(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/h0$h;->c:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/h0;->e(Lcom/ifengyu/intercom/lite/h/h0;)Landroidx/lifecycle/p;

    move-result-object p1

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
