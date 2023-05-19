.class public Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;
.super Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;
.source "AlbumPreviewActivity.java"

# interfaces
.implements Lcom/zhihu/matisse/d/b/b$a;


# instance fields
.field private p:Lcom/zhihu/matisse/d/b/b;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/zhihu/matisse/d/b/b;

    invoke-direct {v0}, Lcom/zhihu/matisse/d/b/b;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->p:Lcom/zhihu/matisse/d/b/b;

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/b;->q:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->p:Lcom/zhihu/matisse/d/b/b;

    invoke-virtual {p1, p0, p0}, Lcom/zhihu/matisse/d/b/b;->f(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/d/b/b$a;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_album"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Album;

    .line 7
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->p:Lcom/zhihu/matisse/d/b/b;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/b;->d(Lcom/zhihu/matisse/internal/entity/Album;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    .line 9
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/d/b/c;->e(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/d/b/c;->j(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->u(Lcom/zhihu/matisse/internal/entity/Item;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->p:Lcom/zhihu/matisse/d/b/b;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/b;->g()V

    return-void
.end method

.method public p1(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/zhihu/matisse/internal/entity/Item;->f(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/c/c;

    .line 6
    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/c/c;->a(Ljava/util/List;)V

    .line 7
    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    .line 8
    iget-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->q:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->q:Z

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_item"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 13
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->i:I

    :cond_2
    return-void
.end method
