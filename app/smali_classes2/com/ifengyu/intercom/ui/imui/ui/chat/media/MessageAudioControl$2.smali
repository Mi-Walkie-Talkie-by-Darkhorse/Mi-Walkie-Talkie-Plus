.class Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;
.super Lcom/liulishuo/filedownloader/m;
.source "MessageAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->downloadMessage(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

.field final synthetic val$audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

.field final synthetic val$audioStreamType:I

.field final synthetic val$delayMillis:J

.field final synthetic val$resetOrigAudioStreamType:Z


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iput p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$audioStreamType:I

    iput-boolean p4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$resetOrigAudioStreamType:Z

    iput-wide p5, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$delayMillis:J

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

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    return-void
.end method

.method protected completed(Lcom/liulishuo/filedownloader/a;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/liulishuo/filedownloader/m;->completed(Lcom/liulishuo/filedownloader/a;)V

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$audioStreamType:I

    iget-boolean v5, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$resetOrigAudioStreamType:Z

    iget-wide v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;->val$delayMillis:J

    invoke-static/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    return-void
.end method
