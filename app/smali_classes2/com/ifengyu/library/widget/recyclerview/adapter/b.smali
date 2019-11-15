.class public abstract Lcom/ifengyu/library/widget/recyclerview/adapter/b;
.super Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;
.source "BaseMultiItemQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/ifengyu/library/widget/recyclerview/d/a;",
        ">",
        "Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter",
        "<TT;TK;>;"
    }
.end annotation


# instance fields
.field private holderClasses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/library/widget/recyclerview/d/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private layouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private multiTypeViewHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/library/widget/recyclerview/d/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V

    return-void
.end method

.method private getLayoutId(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->layouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected addItemType(IILjava/lang/Class;)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/library/widget/recyclerview/d/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->layouts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->layouts:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->layouts:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->holderClasses:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->holderClasses:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->holderClasses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->multiTypeViewHolders:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->multiTypeViewHolders:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->multiTypeViewHolders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;IZ)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->getItemKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/d/a;->getItemViewType()I

    move-result v4

    iget-object v1, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->multiTypeViewHolders:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/library/widget/recyclerview/d/b;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->holderClasses:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ifengyu/library/widget/recyclerview/d/b;

    move-object v1, v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->multiTypeViewHolders:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ifengyu/library/widget/recyclerview/d/b;->convert(Lcom/ifengyu/library/widget/recyclerview/d/a;Ljava/lang/Object;IZ)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_0
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->getViewType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract getItemKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract getViewType(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TK;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->getLayoutId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/ifengyu/library/widget/recyclerview/d/a;

    move-result-object v0

    return-object v0
.end method

.method protected onRemove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/BaseQuickAdapter;->onRemove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->multiTypeViewHolders:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->getViewType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/b;->getItemKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
