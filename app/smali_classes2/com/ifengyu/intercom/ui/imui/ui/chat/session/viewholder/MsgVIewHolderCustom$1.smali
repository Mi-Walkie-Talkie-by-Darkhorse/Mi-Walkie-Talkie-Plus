.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom$1;
.super Ljava/lang/Object;
.source "MsgVIewHolderCustom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->bindContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;->onItemClick()V

    return-void
.end method
