.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$1;
.super Ljava/lang/Object;
.source "MsgViewHolderBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->getMsgAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getEventListener()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;->mMessage:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;->onFailedBtnClick(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method
