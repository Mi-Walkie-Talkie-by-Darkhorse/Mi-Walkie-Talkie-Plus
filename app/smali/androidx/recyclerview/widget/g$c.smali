.class Landroidx/recyclerview/widget/g$c;
.super Landroidx/recyclerview/widget/g$h;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/g;->A(Landroidx/recyclerview/widget/RecyclerView$y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:I

.field final synthetic o:Landroidx/recyclerview/widget/RecyclerView$y;

.field final synthetic p:Landroidx/recyclerview/widget/g;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$y;IIFFFFILandroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 1
    iput-object v0, v8, Landroidx/recyclerview/widget/g$c;->p:Landroidx/recyclerview/widget/g;

    move/from16 v0, p9

    iput v0, v8, Landroidx/recyclerview/widget/g$c;->n:I

    move-object/from16 v0, p10

    iput-object v0, v8, Landroidx/recyclerview/widget/g$c;->o:Landroidx/recyclerview/widget/RecyclerView$y;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroidx/recyclerview/widget/g$h;-><init>(Landroidx/recyclerview/widget/RecyclerView$y;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/g$h;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/g$h;->k:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/g$c;->n:I

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/g$c;->p:Landroidx/recyclerview/widget/g;

    iget-object v0, p1, Landroidx/recyclerview/widget/g;->m:Landroidx/recyclerview/widget/g$f;

    iget-object p1, p1, Landroidx/recyclerview/widget/g;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/g$c;->o:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/g$f;->c(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/g$c;->p:Landroidx/recyclerview/widget/g;

    iget-object p1, p1, Landroidx/recyclerview/widget/g;->a:Ljava/util/List;

    iget-object v0, p0, Landroidx/recyclerview/widget/g$c;->o:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/recyclerview/widget/g$h;->h:Z

    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/g$c;->n:I

    if-lez p1, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/g$c;->p:Landroidx/recyclerview/widget/g;

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/g;->w(Landroidx/recyclerview/widget/g$h;I)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/g$c;->p:Landroidx/recyclerview/widget/g;

    iget-object v0, p1, Landroidx/recyclerview/widget/g;->x:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/g$c;->o:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/g;->y(Landroid/view/View;)V

    :cond_3
    return-void
.end method
