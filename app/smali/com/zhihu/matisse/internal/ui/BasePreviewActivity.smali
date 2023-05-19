.class public abstract Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BasePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$h;
.implements Lcom/zhihu/matisse/e/b;


# instance fields
.field protected final a:Lcom/zhihu/matisse/d/b/c;

.field protected b:Lcom/zhihu/matisse/internal/entity/b;

.field protected c:Landroidx/viewpager/widget/ViewPager;

.field protected d:Lcom/zhihu/matisse/internal/ui/c/c;

.field protected e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:I

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

.field protected l:Z

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/FrameLayout;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/zhihu/matisse/d/b/c;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/d/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->i:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->o:Z

    return-void
.end method

.method static synthetic l(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->p(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->s()V

    return-void
.end method

.method static synthetic n(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->q()I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    return-object p0
.end method

.method private p(Lcom/zhihu/matisse/internal/entity/Item;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->i(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/entity/IncapableCause;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/zhihu/matisse/internal/entity/IncapableCause;->a(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/IncapableCause;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private q()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v3}, Lcom/zhihu/matisse/d/b/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhihu/matisse/internal/entity/Item;

    .line 3
    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-wide v3, v3, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    invoke-static {v3, v4}, Lcom/zhihu/matisse/d/c/d;->d(J)F

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget v4, v4, Lcom/zhihu/matisse/internal/entity/b;->u:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0}, Lcom/zhihu/matisse/d/b/c;->f()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    sget v2, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    invoke-virtual {v3}, Lcom/zhihu/matisse/internal/entity/b;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    sget v3, Lcom/zhihu/matisse/R$string;->button_apply_default:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    sget v4, Lcom/zhihu/matisse/R$string;->button_apply:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->s:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->t()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iget-boolean v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->q()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    if-eqz v0, :cond_1

    .line 6
    sget v0, Lcom/zhihu/matisse/R$string;->error_over_original_size:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget v3, v3, Lcom/zhihu/matisse/internal/entity/b;->u:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 8
    invoke-static {v2, v0}, Lcom/zhihu/matisse/internal/ui/widget/b;->w1(Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/matisse/internal/ui/widget/b;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/zhihu/matisse/internal/ui/widget/b;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v4}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    .line 13
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;->setColor(I)V

    .line 14
    iput-boolean v4, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->o:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, La/e/a/a/b;

    invoke-direct {v1}, La/e/a/a/b;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->n:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->m:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, La/e/a/a/b;

    invoke-direct {v1}, La/e/a/a/b;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, La/e/a/a/b;

    invoke-direct {v1}, La/e/a/a/b;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->n:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, La/e/a/a/b;

    invoke-direct {v1}, La/e/a/a/b;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->m:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 19
    :goto_0
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->o:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->o:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->r(Z)V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zhihu/matisse/R$id;->button_back:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/zhihu/matisse/R$id;->button_apply:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->r(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/b;->d:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    sget v0, Lcom/zhihu/matisse/R$layout;->activity_media_preview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    invoke-static {}, Lcom/zhihu/matisse/d/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/b;->b()Lcom/zhihu/matisse/internal/entity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    .line 10
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget v0, v0, Lcom/zhihu/matisse/internal/entity/b;->e:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_default_bundle"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/d/b/c;->l(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_result_original_enable"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->l(Landroid/os/Bundle;)V

    const-string v0, "checkState"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    .line 16
    :goto_0
    sget p1, Lcom/zhihu/matisse/R$id;->button_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->f:Landroid/widget/TextView;

    .line 17
    sget p1, Lcom/zhihu/matisse/R$id;->button_apply:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/zhihu/matisse/R$id;->size:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->h:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget p1, Lcom/zhihu/matisse/R$id;->pager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    .line 22
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 23
    new-instance p1, Lcom/zhihu/matisse/internal/ui/c/c;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/zhihu/matisse/internal/ui/c/c;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/zhihu/matisse/internal/ui/c/c$a;)V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->d:Lcom/zhihu/matisse/internal/ui/c/c;

    .line 24
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 25
    sget p1, Lcom/zhihu/matisse/R$id;->check_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    .line 26
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCountable(Z)V

    .line 27
    sget p1, Lcom/zhihu/matisse/R$id;->bottom_toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->m:Landroid/widget/FrameLayout;

    .line 28
    sget p1, Lcom/zhihu/matisse/R$id;->top_toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->n:Landroid/widget/FrameLayout;

    .line 29
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$a;-><init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    sget p1, Lcom/zhihu/matisse/R$id;->originalLayout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->j:Landroid/widget/LinearLayout;

    .line 31
    sget p1, Lcom/zhihu/matisse/R$id;->original:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->k:Lcom/zhihu/matisse/internal/ui/widget/CheckRadioView;

    .line 32
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->j:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$b;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$b;-><init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->s()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    check-cast v0, Lcom/zhihu/matisse/internal/ui/c/c;

    .line 2
    iget v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eq v1, p1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhihu/matisse/internal/ui/b;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/ui/b;->y1()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/c/c;->b(I)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/entity/b;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v1, v0}, Lcom/zhihu/matisse/d/b/c;->e(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result v1

    .line 7
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v3, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v3}, Lcom/zhihu/matisse/d/b/c;->k()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v1, v0}, Lcom/zhihu/matisse/d/b/c;->j(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v1

    .line 11
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v3, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->e:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v3}, Lcom/zhihu/matisse/d/b/c;->k()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->u(Lcom/zhihu/matisse/internal/entity/Item;)V

    .line 15
    :cond_3
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->i:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/d/b/c;->m(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    const-string v1, "checkState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected r(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->a:Lcom/zhihu/matisse/d/b/c;

    invoke-virtual {v1}, Lcom/zhihu/matisse/d/b/c;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_result_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "extra_result_apply"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->l:Z

    const-string v1, "extra_result_original_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected u(Lcom/zhihu/matisse/internal/entity/Item;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    invoke-static {v4, v5}, Lcom/zhihu/matisse/d/c/d;->d(J)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->b:Lcom/zhihu/matisse/internal/entity/b;

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/b;->s:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
