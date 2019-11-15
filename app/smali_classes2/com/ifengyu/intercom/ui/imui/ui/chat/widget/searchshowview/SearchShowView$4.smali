.class Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;
.super Ljava/lang/Object;
.source "SearchShowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->addIconView(Landroid/view/View;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$600(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$900(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$900(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$4;->val$tag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$IconRemoveListener;->onIconRemoved(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
