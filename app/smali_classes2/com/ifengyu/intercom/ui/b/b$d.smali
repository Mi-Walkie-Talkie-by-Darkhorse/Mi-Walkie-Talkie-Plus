.class Lcom/ifengyu/intercom/ui/b/b$d;
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
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/ifengyu/intercom/ui/b/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$d;->d:Lcom/ifengyu/intercom/ui/b/b;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f09024f

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$d;->a:Landroid/widget/ImageView;

    const p1, 0x7f09025f

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$d;->b:Landroid/widget/TextView;

    const p1, 0x7f090250

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$d;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$d;->d:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/b/b;->f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$d;->d:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/b/b;->f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/b/b$a;->c(I)V

    :cond_0
    return-void
.end method
