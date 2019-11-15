.class Lcom/zhy/a/a/c/a$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterWrapper.java"

# interfaces
.implements Lcom/zhy/a/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/a/a/c/a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/a/a/c/a;


# direct methods
.method constructor <init>(Lcom/zhy/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;I)I
    .locals 2

    iget-object v0, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-virtual {v0, p3}, Lcom/zhy/a/a/c/a;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-static {v1}, Lcom/zhy/a/a/c/a;->a(Lcom/zhy/a/a/c/a;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zhy/a/a/c/a$1;->a:Lcom/zhy/a/a/c/a;

    invoke-static {v1}, Lcom/zhy/a/a/c/a;->b(Lcom/zhy/a/a/c/a;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
