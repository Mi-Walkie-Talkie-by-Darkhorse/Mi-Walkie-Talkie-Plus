.class Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;
.super Ljava/lang/Object;
.source "LoadMoreListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->j()V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f1102dd

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;Z)Z

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->d(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->e(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f11025a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->f(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$a;->a:Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->f(Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView$b;->f()V

    :cond_1
    return-void
.end method
