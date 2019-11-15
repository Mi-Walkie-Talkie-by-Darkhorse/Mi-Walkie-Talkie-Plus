.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MessageListPanelEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->initListView(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->proxy:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;->shouldCollapseInputPanel()V

    :cond_0
    return-void
.end method
