.class Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;
.super Ljava/lang/Object;
.source "SearchShowView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$008(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$002(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;I)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6309\u952e\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x43

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setOnKeyListener\u4e8b\u4ef6\u3000\u5220\u9664\u952e\u88ab\u89e6\u53d1\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$502(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Landroid/view/View;)Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$1;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$302(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Z)Z

    goto :goto_1
.end method
