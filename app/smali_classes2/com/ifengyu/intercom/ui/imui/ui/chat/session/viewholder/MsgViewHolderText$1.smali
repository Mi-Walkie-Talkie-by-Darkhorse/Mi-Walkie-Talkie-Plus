.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText$1;
.super Ljava/lang/Object;
.source "MsgViewHolderText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;->bindContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;->onItemClick()V

    return-void
.end method
