.class Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;
.super Ljava/lang/Object;
.source "BasePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->d:Lcom/zhihu/matisse/internal/ui/c/c;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/c/c;->b(I)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->j(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->p(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 4
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->a(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 9
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v1, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->e(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->m(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V

    .line 13
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/b;->r:Lcom/zhihu/matisse/e/c;

    if-eqz v0, :cond_4

    .line 14
    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    .line 15
    invoke-virtual {p1}, Lcom/zhihu/matisse/d/b/c;->d()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;->a:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v1, v1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v1}, Lcom/zhihu/matisse/d/b/c;->c()Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/zhihu/matisse/e/c;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method
