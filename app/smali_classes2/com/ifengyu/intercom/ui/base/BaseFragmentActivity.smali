.class public abstract Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseRxFragmentActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;,
        Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;
    }
.end annotation


# instance fields
.field protected h:Lcom/ifengyu/intercom/m/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseRxFragmentActivity;-><init>()V

    return-void
.end method

.method private synthetic B(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->y()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;->a()V

    :cond_0
    return-void
.end method

.method private synthetic D(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->y()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic C(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->B(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic E(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->D(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;Ljava/lang/Long;)V

    return-void
.end method

.method protected F(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->H(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method protected G(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/m/b/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/m/b/f;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/m/b/f;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/m/b/f;->a(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/f;->show()V

    :cond_1
    const-wide/16 p1, 0x3e8

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/BaseRxFragmentActivity;->x(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance p2, Lcom/ifengyu/intercom/ui/base/f;

    invoke-direct {p2, p0, p3}, Lcom/ifengyu/intercom/ui/base/f;-><init>(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    .line 13
    invoke-interface {p1, p2}, Lcom/uber/autodispose/m;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected H(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V
    .locals 1

    const v0, 0x7f080187

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->G(Ljava/lang/String;ILcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method protected I()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->J(Z)V

    return-void
.end method

.method protected J(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->K(ZLjava/lang/String;)V

    return-void
.end method

.method protected K(ZLjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/m/b/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/m/b/f;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/m/b/f;->b(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const v0, 0x7f08018e

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/m/b/f;->a(I)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/f;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected L(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->M(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method protected M(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/m/b/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/m/b/f;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/m/b/f;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/m/b/f;->a(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/f;->show()V

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/BaseRxFragmentActivity;->x(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance v0, Lcom/ifengyu/intercom/ui/base/g;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/base/g;-><init>(Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    .line 13
    invoke-interface {p1, v0}, Lcom/uber/autodispose/m;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
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

.method public onBackPressed()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->n(Lcom/qmuiteam/qmui/c/g;)V

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/p/n;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/p/n;->c(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->y()V

    .line 3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->w()V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    return-void
.end method

.method protected y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/m/b/f;->dismiss()V

    :cond_0
    return-void
.end method

.method protected z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->h:Lcom/ifengyu/intercom/m/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
