.class public Lcom/ifengyu/intercom/ui/imui/base/a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewHolder.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/a;->b:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/a;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private d(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/a;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/ifengyu/intercom/ui/imui/base/a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public a(ILandroid/view/View$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/base/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/ifengyu/intercom/ui/imui/base/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public b(I)Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public b(II)Lcom/ifengyu/intercom/ui/imui/base/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public c(I)Landroid/widget/ImageView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
