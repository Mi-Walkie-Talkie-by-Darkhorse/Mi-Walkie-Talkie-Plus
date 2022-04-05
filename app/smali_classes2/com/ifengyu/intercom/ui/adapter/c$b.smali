.class Lcom/ifengyu/intercom/ui/adapter/c$b;
.super Landroidx/recyclerview/widget/RecyclerView$y;

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
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f09023c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->a:Landroid/widget/TextView;

    const p1, 0x7f090238

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->a:Landroid/widget/TextView;

    const v1, 0x7f1101ca

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/c;->c(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$b;->c:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->b(Lcom/ifengyu/intercom/ui/adapter/c;)Lcom/ifengyu/intercom/ui/adapter/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/adapter/c$a;->a()V

    :cond_0
    return-void
.end method
