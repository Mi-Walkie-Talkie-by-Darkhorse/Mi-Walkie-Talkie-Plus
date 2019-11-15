.class Lcom/ifengyu/intercom/ui/adapter/c$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DiscoveryFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/ifengyu/intercom/ui/adapter/c;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f100220

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->a:Landroid/widget/TextView;

    const v0, 0x7f10021f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->a:Landroid/widget/TextView;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/c;->c(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/adapter/c$a;->d()V

    :cond_0
    return-void
.end method
