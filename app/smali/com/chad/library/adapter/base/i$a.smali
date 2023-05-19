.class public final Lcom/chad/library/adapter/base/i$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$b;
.source "BaseQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/i;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "position",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic e:Lcom/chad/library/adapter/base/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/i<",
            "TT;TVH;>;"
        }
    .end annotation
.end field

.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic g:Landroidx/recyclerview/widget/GridLayoutManager$b;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/i;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/i<",
            "TT;TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Landroidx/recyclerview/widget/GridLayoutManager$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    iput-object p2, p0, Lcom/chad/library/adapter/base/i$a;->f:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Lcom/chad/library/adapter/base/i$a;->g:Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/i;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x10000111

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/i;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const v2, 0x10000333

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/i;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-static {v1}, Lcom/chad/library/adapter/base/i;->e(Lcom/chad/library/adapter/base/i;)Lcom/chad/library/adapter/base/l/a;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/i;->X(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/chad/library/adapter/base/i$a;->f:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/chad/library/adapter/base/i$a;->g:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f(I)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/i;->X(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/chad/library/adapter/base/i$a;->f:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_4
    iget-object v1, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-static {v1}, Lcom/chad/library/adapter/base/i;->e(Lcom/chad/library/adapter/base/i;)Lcom/chad/library/adapter/base/l/a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/c;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chad/library/adapter/base/i$a;->f:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/chad/library/adapter/base/i$a;->e:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-interface {v1, v2, v0, p1}, Lcom/chad/library/adapter/base/l/a;->a(Landroidx/recyclerview/widget/GridLayoutManager;II)I

    move-result p1

    :goto_0
    return p1
.end method
