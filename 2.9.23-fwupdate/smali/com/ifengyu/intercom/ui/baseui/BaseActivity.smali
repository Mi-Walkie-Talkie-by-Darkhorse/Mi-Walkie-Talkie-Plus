.class public Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;,
        Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/widget/LinearLayout;

.field private d:J

.field protected e:Ljava/lang/String;

.field protected f:Landroid/support/v7/widget/Toolbar;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/LinearLayout;

.field protected l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

.field protected m:Z

.field public n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

.field public o:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;

.field public p:Ljava/lang/Runnable;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->q:Ljava/util/HashMap;

    sget-object v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->o:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$State;

    new-instance v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$5;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/a;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    const/4 v2, 0x0

    const v0, 0x7f0900c2

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Z

    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/f;->c()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->b()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$6;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a(Lcom/ifengyu/intercom/ui/widget/dialog/a$a;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a;->show()V

    return-void
.end method

.method protected a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090078

    new-instance v3, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$4;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method

.method protected a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected a(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(ZZII)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    return-void
.end method

.method public a(ZZLjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->dismiss()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ifengyu/intercom/b/w;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected c_()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f100043

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$1;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f100044

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f1002bf

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->k:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j:Landroid/widget/TextView;

    return-void
.end method

.method protected i()Landroid/support/v7/widget/Toolbar;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const v0, 0x7f10033d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v3, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c_()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->g()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->h()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->f:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->finish()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method protected m()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_last_login_time"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_last_login_time"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_expires_in"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x76a700

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "user_expires_in"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    long-to-int v2, v2

    sub-int v0, v2, v0

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v1

    const v2, 0x7f090078

    new-instance v3, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$2;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$3;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->g()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->i()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/im/account/UserCache;->instance()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/account/UserCache;->clear()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->setKickout(Z)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->logOut()V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/d;->a()V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    instance-of v0, p0, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7f090187

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->d:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setRequestedOrientation(I)V

    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/app/Activity;)Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04001e

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->i()Landroid/support/v7/widget/Toolbar;

    :goto_0
    invoke-static {p0}, Lcom/ifengyu/intercom/b/d;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->supportRequestWindowFeature(I)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/d;->b(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Z

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/ifengyu/intercom/a;->d:I

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    instance-of v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m()V

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1000ad

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
