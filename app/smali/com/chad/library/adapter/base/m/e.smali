.class public Lcom/chad/library/adapter/base/m/e;
.super Ljava/lang/Object;
.source "DraggableModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 [2\u00020\u0001:\u0001[B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<J\u0010\u0010=\u001a\u0002042\u0006\u0010>\u001a\u00020?H\u0004J\u0008\u0010@\u001a\u00020\u0006H\u0016J\u0010\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u000204H\u0002J\u0008\u0010C\u001a\u00020:H\u0002J\u0015\u0010D\u001a\u00020:2\u0006\u0010E\u001a\u00020FH\u0000\u00a2\u0006\u0002\u0008GJ\u0010\u0010H\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0018\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u00020?2\u0006\u0010K\u001a\u00020?H\u0016J\u0010\u0010L\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010M\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010N\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010O\u001a\u00020:2\u0006\u0010>\u001a\u00020?H\u0016J4\u0010P\u001a\u00020:2\u0008\u0010Q\u001a\u0004\u0018\u00010R2\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\u0006\u0010V\u001a\u00020\u0006H\u0016J\u0012\u0010W\u001a\u00020:2\u0008\u0010X\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010Y\u001a\u00020:2\u0008\u0010Z\u001a\u0004\u0018\u00010\"H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\tR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseDraggableModule;",
        "Lcom/chad/library/adapter/base/listener/DraggableListenerImp;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "isDragEnabled",
        "",
        "()Z",
        "setDragEnabled",
        "(Z)V",
        "value",
        "isDragOnLongPressEnabled",
        "setDragOnLongPressEnabled",
        "isSwipeEnabled",
        "setSwipeEnabled",
        "itemTouchHelper",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "getItemTouchHelper",
        "()Landroidx/recyclerview/widget/ItemTouchHelper;",
        "setItemTouchHelper",
        "(Landroidx/recyclerview/widget/ItemTouchHelper;)V",
        "itemTouchHelperCallback",
        "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "getItemTouchHelperCallback",
        "()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;",
        "setItemTouchHelperCallback",
        "(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V",
        "mOnItemDragListener",
        "Lcom/chad/library/adapter/base/listener/OnItemDragListener;",
        "getMOnItemDragListener",
        "()Lcom/chad/library/adapter/base/listener/OnItemDragListener;",
        "setMOnItemDragListener",
        "(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V",
        "mOnItemSwipeListener",
        "Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;",
        "getMOnItemSwipeListener",
        "()Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;",
        "setMOnItemSwipeListener",
        "(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V",
        "mOnToggleViewLongClickListener",
        "Landroid/view/View$OnLongClickListener;",
        "getMOnToggleViewLongClickListener",
        "()Landroid/view/View$OnLongClickListener;",
        "setMOnToggleViewLongClickListener",
        "(Landroid/view/View$OnLongClickListener;)V",
        "mOnToggleViewTouchListener",
        "Landroid/view/View$OnTouchListener;",
        "getMOnToggleViewTouchListener",
        "()Landroid/view/View$OnTouchListener;",
        "setMOnToggleViewTouchListener",
        "(Landroid/view/View$OnTouchListener;)V",
        "toggleViewId",
        "",
        "getToggleViewId",
        "()I",
        "setToggleViewId",
        "(I)V",
        "attachToRecyclerView",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getViewHolderPosition",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "hasToggleView",
        "inRange",
        "position",
        "initItemTouch",
        "initView",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "initView$com_github_CymChad_brvah",
        "onItemDragEnd",
        "onItemDragMoving",
        "source",
        "target",
        "onItemDragStart",
        "onItemSwipeClear",
        "onItemSwipeStart",
        "onItemSwiped",
        "onItemSwiping",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dX",
        "",
        "dY",
        "isCurrentlyActive",
        "setOnItemDragListener",
        "onItemDragListener",
        "setOnItemSwipeListener",
        "onItemSwipeListener",
        "Companion",
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
.field private final a:Lcom/chad/library/adapter/base/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/i<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:I

.field public e:Landroidx/recyclerview/widget/g;

.field public f:Lcom/chad/library/adapter/base/k/a;

.field private g:Landroid/view/View$OnTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/view/View$OnLongClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/chad/library/adapter/base/l/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/chad/library/adapter/base/l/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/chad/library/adapter/base/i;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/i<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    .line 2
    invoke-direct {p0}, Lcom/chad/library/adapter/base/m/e;->g()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/m/e;->k:Z

    return-void
.end method

.method private final f(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final g()V
    .locals 2

    .line 1
    new-instance v0, Lcom/chad/library/adapter/base/k/a;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/k/a;-><init>(Lcom/chad/library/adapter/base/m/e;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/m/e;->u(Lcom/chad/library/adapter/base/k/a;)V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/g;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/e;->c()Lcom/chad/library/adapter/base/k/a;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/m/e;->t(Landroidx/recyclerview/widget/g;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/e;->b()Landroidx/recyclerview/widget/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/g;->h(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final b()Landroidx/recyclerview/widget/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->e:Landroidx/recyclerview/widget/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "itemTouchHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Lcom/chad/library/adapter/base/k/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->f:Lcom/chad/library/adapter/base/k/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "itemTouchHelperCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/c;->s(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final d(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/chad/library/adapter/base/m/e;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->b:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/chad/library/adapter/base/m/e;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/m/e;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/chad/library/adapter/base/m/e;->h:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/m/e;->g:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->b:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->k:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->c:Z

    return v0
.end method

.method public l(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->i:Lcom/chad/library/adapter/base/l/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/l/e;->a(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    :goto_0
    return-void
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/m/e;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/chad/library/adapter/base/m/e;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge v0, v1, :cond_1

    if-ge v0, v1, :cond_3

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 4
    iget-object v4, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    if-gt v2, v0, :cond_3

    move v3, v0

    :goto_1
    add-int/lit8 v4, v3, -0x1

    .line 5
    iget-object v5, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v3, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_1

    .line 6
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 7
    :cond_4
    iget-object v2, p0, Lcom/chad/library/adapter/base/m/e;->i:Lcom/chad/library/adapter/base/l/e;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v2, p1, v0, p2, v1}, Lcom/chad/library/adapter/base/l/e;->b(Landroidx/recyclerview/widget/RecyclerView$y;ILandroidx/recyclerview/widget/RecyclerView$y;I)V

    :goto_3
    return-void
.end method

.method public n(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->i:Lcom/chad/library/adapter/base/l/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/l/e;->c(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    :goto_0
    return-void
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->j:Lcom/chad/library/adapter/base/l/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/l/g;->c(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/m/e;->j:Lcom/chad/library/adapter/base/l/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/l/g;->a(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/m/e;->d(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/m/e;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/i;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/chad/library/adapter/base/m/e;->a:Lcom/chad/library/adapter/base/i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 5
    iget-boolean v1, p0, Lcom/chad/library/adapter/base/m/e;->c:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/chad/library/adapter/base/m/e;->j:Lcom/chad/library/adapter/base/l/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/chad/library/adapter/base/l/g;->b(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$y;FFZ)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$y;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/m/e;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/m/e;->j:Lcom/chad/library/adapter/base/l/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/chad/library/adapter/base/l/g;->d(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$y;FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/m/e;->b:Z

    return-void
.end method

.method protected final setMOnItemDragListener(Lcom/chad/library/adapter/base/l/e;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->i:Lcom/chad/library/adapter/base/l/e;

    return-void
.end method

.method protected final setMOnItemSwipeListener(Lcom/chad/library/adapter/base/l/g;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->j:Lcom/chad/library/adapter/base/l/g;

    return-void
.end method

.method protected final setMOnToggleViewLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->h:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method protected final setMOnToggleViewTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->g:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnItemDragListener(Lcom/chad/library/adapter/base/l/e;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->i:Lcom/chad/library/adapter/base/l/e;

    return-void
.end method

.method public setOnItemSwipeListener(Lcom/chad/library/adapter/base/l/g;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/l/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->j:Lcom/chad/library/adapter/base/l/g;

    return-void
.end method

.method public final t(Landroidx/recyclerview/widget/g;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->e:Landroidx/recyclerview/widget/g;

    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/k/a;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/k/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/m/e;->f:Lcom/chad/library/adapter/base/k/a;

    return-void
.end method
