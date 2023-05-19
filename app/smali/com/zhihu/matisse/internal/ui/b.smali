.class public Lcom/zhihu/matisse/internal/ui/b;
.super Landroidx/fragment/app/Fragment;
.source "PreviewItemFragment.java"


# instance fields
.field private a:Lcom/zhihu/matisse/e/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic w1(Lcom/zhihu/matisse/internal/ui/b;)Lcom/zhihu/matisse/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/b;->a:Lcom/zhihu/matisse/e/b;

    return-object p0
.end method

.method public static x1(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/ui/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/zhihu/matisse/internal/ui/b;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/ui/b;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args_item"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/zhihu/matisse/e/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/zhihu/matisse/e/b;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/b;->a:Lcom/zhihu/matisse/e/b;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/zhihu/matisse/R$layout;->fragment_preview_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/b;->a:Lcom/zhihu/matisse/e/b;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "args_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/zhihu/matisse/internal/entity/Item;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Lcom/zhihu/matisse/R$id;->video_play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance v1, Lcom/zhihu/matisse/internal/ui/b$a;

    invoke-direct {v1, p0, p2}, Lcom/zhihu/matisse/internal/ui/b$a;-><init>(Lcom/zhihu/matisse/internal/ui/b;Lcom/zhihu/matisse/internal/entity/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    sget v0, Lcom/zhihu/matisse/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 9
    sget-object p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 10
    new-instance p1, Lcom/zhihu/matisse/internal/ui/b$b;

    invoke-direct {p1, p0}, Lcom/zhihu/matisse/internal/ui/b$b;-><init>(Lcom/zhihu/matisse/internal/ui/b;)V

    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setSingleTapListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouch$c;)V

    .line 11
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zhihu/matisse/d/c/d;->b(Landroid/net/Uri;Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/b;->p:Lcom/zhihu/matisse/b/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 14
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v5

    .line 15
    invoke-interface/range {v0 .. v5}, Lcom/zhihu/matisse/b/a;->b(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/b;->p:Lcom/zhihu/matisse/b/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 17
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->a()Landroid/net/Uri;

    move-result-object v5

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/zhihu/matisse/b/a;->a(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public y1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->w()V

    :cond_0
    return-void
.end method
