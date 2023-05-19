.class public Lcom/zhihu/matisse/internal/ui/a;
.super Landroidx/fragment/app/Fragment;
.source "MediaSelectionFragment.java"

# interfaces
.implements Lcom/zhihu/matisse/d/b/b$a;
.implements Lcom/zhihu/matisse/internal/ui/c/a$c;
.implements Lcom/zhihu/matisse/internal/ui/c/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/ui/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/zhihu/matisse/d/b/b;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/zhihu/matisse/internal/ui/c/a;

.field private d:Lcom/zhihu/matisse/internal/ui/a$a;

.field private e:Lcom/zhihu/matisse/internal/ui/c/a$c;

.field private f:Lcom/zhihu/matisse/internal/ui/c/a$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/zhihu/matisse/d/b/b;

    invoke-direct {v0}, Lcom/zhihu/matisse/d/b/b;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->a:Lcom/zhihu/matisse/d/b/b;

    return-void
.end method

.method public static x1(Lcom/zhihu/matisse/internal/entity/Album;)Lcom/zhihu/matisse/internal/ui/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/zhihu/matisse/internal/ui/a;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/ui/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_album"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public A0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->c:Lcom/zhihu/matisse/internal/ui/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/c/d;->h(Landroid/database/Cursor;)V

    return-void
.end method

.method public d1(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/a;->f:Lcom/zhihu/matisse/internal/ui/c/a$e;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/matisse/internal/entity/Album;

    invoke-interface {p1, v0, p2, p3}, Lcom/zhihu/matisse/internal/ui/c/a$e;->d1(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_album"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Album;

    .line 3
    new-instance v0, Lcom/zhihu/matisse/internal/ui/c/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/a;->d:Lcom/zhihu/matisse/internal/ui/a$a;

    .line 4
    invoke-interface {v2}, Lcom/zhihu/matisse/internal/ui/a$a;->e()Lcom/zhihu/matisse/d/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/matisse/internal/ui/c/a;-><init>(Landroid/content/Context;Lcom/zhihu/matisse/d/b/c;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->c:Lcom/zhihu/matisse/internal/ui/c/a;

    .line 5
    invoke-virtual {v0, p0}, Lcom/zhihu/matisse/internal/ui/c/a;->l(Lcom/zhihu/matisse/internal/ui/c/a$c;)V

    .line 6
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->c:Lcom/zhihu/matisse/internal/ui/c/a;

    invoke-virtual {v0, p0}, Lcom/zhihu/matisse/internal/ui/c/a;->registerOnMediaClickListener(Lcom/zhihu/matisse/internal/ui/c/a$e;)V

    .line 7
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 8
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    .line 9
    iget v1, v0, Lcom/zhihu/matisse/internal/entity/b;->n:I

    if-lez v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/zhihu/matisse/internal/entity/b;->n:I

    invoke-static {v1, v2}, Lcom/zhihu/matisse/d/c/g;->a(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 11
    :cond_0
    iget v1, v0, Lcom/zhihu/matisse/internal/entity/b;->m:I

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zhihu/matisse/R$dimen;->media_grid_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 14
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/zhihu/matisse/internal/ui/widget/c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/zhihu/matisse/internal/ui/widget/c;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 15
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/a;->c:Lcom/zhihu/matisse/internal/ui/c/a;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/a;->a:Lcom/zhihu/matisse/d/b/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/zhihu/matisse/d/b/b;->f(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/d/b/b$a;)V

    .line 17
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/a;->a:Lcom/zhihu/matisse/d/b/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->k:Z

    invoke-virtual {v1, p1, v0}, Lcom/zhihu/matisse/d/b/b;->e(Lcom/zhihu/matisse/internal/entity/Album;Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/a$a;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/zhihu/matisse/internal/ui/a$a;

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->d:Lcom/zhihu/matisse/internal/ui/a$a;

    .line 4
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/c/a$c;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/zhihu/matisse/internal/ui/c/a$c;

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->e:Lcom/zhihu/matisse/internal/ui/c/a$c;

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/c/a$e;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/zhihu/matisse/internal/ui/c/a$e;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/a;->f:Lcom/zhihu/matisse/internal/ui/c/a$e;

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context must implement SelectionProvider."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget p3, Lcom/zhihu/matisse/R$layout;->fragment_media_selection:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->a:Lcom/zhihu/matisse/d/b/b;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/b;->g()V

    return-void
.end method

.method public onUpdate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->e:Lcom/zhihu/matisse/internal/ui/c/a$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/zhihu/matisse/internal/ui/c/a$c;->onUpdate()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/zhihu/matisse/R$id;->recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public p1(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->c:Lcom/zhihu/matisse/internal/ui/c/a;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/c/d;->h(Landroid/database/Cursor;)V

    return-void
.end method

.method public w1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->a:Lcom/zhihu/matisse/d/b/b;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/b;->g()V

    return-void
.end method

.method public y1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/a;->c:Lcom/zhihu/matisse/internal/ui/c/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
