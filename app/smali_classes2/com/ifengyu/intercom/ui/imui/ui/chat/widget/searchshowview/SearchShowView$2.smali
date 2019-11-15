.class Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;
.super Ljava/lang/Object;
.source "SearchShowView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$502(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$302(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$2;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$700(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_1
    return-void
.end method
