.class public Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;,
        Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroidx/appcompat/widget/Toolbar;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/LinearLayout;

.field protected h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

.field private i:Z

.field private j:Landroid/widget/LinearLayout;

.field private k:J

.field protected l:Z

.field public m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

.field private n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field public o:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;

.field public p:Ljava/lang/Runnable;


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

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i:Z

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->o:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$c;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->w()V

    return-void
.end method

.method private w()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f1100f0

    const v2, 0x7f08013e

    .line 1
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/g0;->c()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/h0;->c()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/e;->b()V

    .line 7
    :goto_0
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const v0, 0x7f090415

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/d;->a()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

    .line 18
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$d;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->a(Lcom/ifengyu/intercom/ui/widget/dialog/c$b;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected a(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(ZZII)V
    .locals 0

    .line 16
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    return-void
.end method

.method public a(ZZLjava/lang/String;I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->dismiss()V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(I)V

    .line 11
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->f(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

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

.method protected d(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x2

    .line 3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->dismiss()V
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

.method protected k()Landroidx/appcompat/widget/Toolbar;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const v0, 0x7f090421

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->d(Z)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->r()V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->s()V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->t()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    return v0
.end method

.method protected o()Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    instance-of v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7f110287

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->k:J

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->q()V

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
    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/app/Activity;)V

    .line 4
    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;)Z

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0c0021

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->k()Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/ifengyu/intercom/i/j;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/i/j;->b(Landroid/app/Activity;)V

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
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i:Z

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/ifengyu/intercom/d;->c:I

    if-gtz v0, :cond_1

    .line 6
    invoke-static {p0}, Lcom/ifengyu/intercom/d;->a(Landroid/app/Activity;)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i()V

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

.method protected p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method public q()V
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

.method protected r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09021d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$b;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090346

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->d:Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->e:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09034c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->g:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->x()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090353

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j:Landroid/widget/LinearLayout;

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
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->x()V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

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

.method protected t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090413

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/widget/TextView;

    return-void
.end method

.method protected u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110285

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
