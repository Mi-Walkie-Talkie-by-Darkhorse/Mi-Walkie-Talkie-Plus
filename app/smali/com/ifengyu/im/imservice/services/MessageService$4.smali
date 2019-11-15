.class Lcom/ifengyu/im/imservice/services/MessageService$4;
.super Lcom/liulishuo/filedownloader/m;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/services/MessageService;->createDownloadListener()Lcom/liulishuo/filedownloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/services/MessageService;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/services/MessageService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageService$4;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected blockComplete(Lcom/liulishuo/filedownloader/a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/m;->blockComplete(Lcom/liulishuo/filedownloader/a;)V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachStatus(I)V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService$4;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/services/MessageService;->access$300(Lcom/ifengyu/im/imservice/services/MessageService;)Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    return-void
.end method

.method protected completed(Lcom/liulishuo/filedownloader/a;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/m;->completed(Lcom/liulishuo/filedownloader/a;)V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio attachment download complete, msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->notifyMessageDownloaded(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getToId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/MessageService$4;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/services/MessageService;->getTalkGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService$4;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/services/MessageService;->isEnterChatRoom()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/MessageService$4;->this$0:Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-static {v1, v0}, Lcom/ifengyu/im/imservice/services/MessageService;->access$400(Lcom/ifengyu/im/imservice/services/MessageService;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    :cond_0
    return-void
.end method
