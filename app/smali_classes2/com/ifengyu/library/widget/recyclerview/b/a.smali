.class public Lcom/ifengyu/library/widget/recyclerview/b/a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacingDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    iput v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->c:Z

    iput p1, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    iput p2, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->c:Z

    return-void
.end method

.method private a(Landroid/graphics/Rect;III)V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    sub-int v1, p4, p3

    mul-int/2addr v0, v1

    div-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    add-int/lit8 v1, p3, 0x1

    mul-int/2addr v0, v1

    div-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p4, :cond_0

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    mul-int/2addr v0, p3

    div-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    mul-int/2addr v0, v1

    div-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p4, :cond_1

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    rem-int v2, v1, v0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/ifengyu/library/widget/recyclerview/b/a;->a(Landroid/graphics/Rect;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/ifengyu/library/widget/recyclerview/b/a;->a(Landroid/graphics/Rect;III)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->c:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    if-lez v1, :cond_0

    iget v0, p0, Lcom/ifengyu/library/widget/recyclerview/b/a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
