.class Lcom/ifengyu/intercom/ui/b/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "DiscoveryFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/ifengyu/intercom/ui/b/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->c:Lcom/ifengyu/intercom/ui/b/b;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902ba

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->a:Landroid/widget/TextView;

    const p1, 0x7f0902b5

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->a:Landroid/widget/TextView;

    const v1, 0x7f11025a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->c:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/b/b;->g(Lcom/ifengyu/intercom/ui/b/b;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->c:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/b/b;->f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$b;->c:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/b/b;->f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/b/b$a;->a()V

    :cond_0
    return-void
.end method
