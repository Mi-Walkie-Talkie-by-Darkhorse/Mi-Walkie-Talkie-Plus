.class public Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroidx/appcompat/widget/Toolbar;

.field protected c:Landroid/widget/ImageView;

.field protected d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

.field private e:Z

.field private f:Landroid/widget/LinearLayout;

.field protected g:Z

.field public h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->e:Z

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->q()V

    return-void
.end method

.method private q()V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f110180

    const v2, 0x7f08018e

    .line 1
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->C(ZZII)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->k1()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->m(Ljava/lang/String;)Lcom/ifengyu/intercom/i/y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/y0;->j1()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->l1()V

    .line 11
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->g:Z

    return-void
.end method

.method private y()V
    .locals 3

    const v0, 0x7f09048b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/g;->a()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

    .line 2
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;-><init>(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$c;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->i(Lcom/ifengyu/intercom/ui/widget/dialog/a$b;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public C(ZZII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    return-void
.end method

.method public D(ZZLjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->dismiss()V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b(Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(I)V

    .line 7
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method protected E(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 4
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object v0
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public o(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->r()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->q(Landroid/app/Activity;)V

    .line 4
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0c001e

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->p()Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/ifengyu/intercom/p/n;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/p/n;->c(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->m()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->e:Z

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/ifengyu/intercom/g;->b:I

    if-gtz v0, :cond_1

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/g;->c(Landroid/app/Activity;)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected p()Landroidx/appcompat/widget/Toolbar;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const v0, 0x7f090496

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->t(Z)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->s()V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->w()V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->x()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090286

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$a;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->y()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0903c5

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 9
    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->y()V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(I)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->d:Lcom/ifengyu/intercom/ui/widget/dialog/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0903b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0903bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090489

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-void
.end method

.method protected z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
