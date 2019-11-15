.class Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;
.super Ljava/lang/Object;
.source "LoadMoreListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f090152

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$1;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->c()V

    goto :goto_0
.end method
