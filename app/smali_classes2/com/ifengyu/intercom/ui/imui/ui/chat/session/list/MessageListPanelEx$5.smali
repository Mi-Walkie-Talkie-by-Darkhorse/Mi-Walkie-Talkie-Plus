.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;
.super Ljava/lang/Object;
.source "MessageListPanelEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->refreshViewHolderByIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    iput p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;->val$index:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;->val$index:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->notifyDataItemChanged(I)V

    goto :goto_0
.end method
