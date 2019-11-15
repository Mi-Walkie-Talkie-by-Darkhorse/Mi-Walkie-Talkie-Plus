.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;
.super Ljava/lang/Object;
.source "SelectMemberFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->initWidget(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->setSearchKey(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$SearchAdapter;->setNewData(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/SelectMemberFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
