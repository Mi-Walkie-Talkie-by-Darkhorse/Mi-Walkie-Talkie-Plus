.class Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;
.super Ljava/lang/Object;
.source "SearchShowView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$800(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView$3;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;->access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/SearchShowView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
