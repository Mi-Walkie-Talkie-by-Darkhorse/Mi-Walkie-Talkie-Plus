.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;
.super Ljava/util/TimerTask;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->onRecordFinished(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;->this$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/MessageFragment$3$1;->cancel()Z

    return-void
.end method
