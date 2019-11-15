.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$4;
.super Ljava/lang/Object;
.source "MessageListPanelEx.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarClick(Landroid/content/Context;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->proxy:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;

    invoke-interface {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;->onAvatarClick(Landroid/content/Context;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method public onFailedBtnClick(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    return-void
.end method

.method public onFooterClick(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    return-void
.end method

.method public onViewHolderLongClick(Landroid/view/View;Landroid/view/View;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
