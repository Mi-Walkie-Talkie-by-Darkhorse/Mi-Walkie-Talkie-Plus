.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;
.super Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/AudioRecordAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCoderInitializationFailed()V
    .locals 0

    return-void
.end method

.method public onEndingRecord()V
    .locals 0

    return-void
.end method

.method public onPlayBegin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayEnd(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onRecordFailed()V
    .locals 1

    const-string v0, "\u5f55\u97f3\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRecordFinished(Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)F

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    const-wide/16 v0, 0x1f4

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$900(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Lcom/ifengyu/im/imservice/services/MessageService;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$800(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ifengyu/im/imservice/services/MessageService;->sendAudioMessage(ILjava/lang/String;Ljava/lang/String;J)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->messageListPanel:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->onMsgSend(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$1000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$1100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onRecordInitializationCancelled()V
    .locals 0

    return-void
.end method

.method public onRecordInitializationFailed()V
    .locals 0

    return-void
.end method

.method public onRecordInitializationSucceed()V
    .locals 0

    return-void
.end method

.method public onRecordStart()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$202(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;Z)V

    goto :goto_0
.end method

.method public onRmsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$1200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;I)V

    return-void
.end method
