.class public abstract Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mCompositeDisposable:Lio/reactivex/disposables/a;

.field private mContent:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
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

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mViews:Landroid/util/SparseArray;

    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0}, Lio/reactivex/disposables/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mCompositeDisposable:Lio/reactivex/disposables/a;

    return-void
.end method


# virtual methods
.method protected addDisposable(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mCompositeDisposable:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public clearDisappearInfo(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "mDisappearingChildren"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "ViewGroup.mDisappearingChildren contain the targetView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected findView(I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method protected abstract getContentLayout()I
.end method

.method protected getContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentFragment()Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public hideLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideTipDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract initData()V
.end method

.method protected abstract initListener()V
.end method

.method protected initToolbar()V
    .locals 1

    const v0, 0x7f100097

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method protected isActivated()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/library/helper/a/a;->a(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->popBackStack()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/app/Activity;)Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->initBundle(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentLayout()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->setContentView(I)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->initToolbar()V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->initView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->initData()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->initListener()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentViewId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mCompositeDisposable:Lio/reactivex/disposables/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mCompositeDisposable:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mCompositeDisposable:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->initBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method protected popBackStack()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method

.method public replaceFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->replaceFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;Z)V

    return-void
.end method

.method public replaceFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onFetchTransitionConfig()Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget v3, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->a:I

    iget v4, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->b:I

    iget v5, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->c:I

    iget v0, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->d:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentViewId()I

    move-result v3

    invoke-virtual {v0, v3, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p2, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showLoadingDialog()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b(Z)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->i(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    :cond_1
    return-void
.end method

.method public showLoadingDialog(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b(Z)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->i(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    :cond_1
    return-void
.end method

.method public showTipDiaog()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a(I)Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a(Z)Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a()Lcom/ifengyu/library/widget/dialog/TipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mTipDialog:Lcom/ifengyu/library/widget/dialog/TipDialog;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->show()V

    :cond_1
    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public switchContent(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V
    .locals 6

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onFetchTransitionConfig()Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mContent:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    if-eq v2, p2, :cond_0

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->mContent:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget v3, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->a:I

    iget v4, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->b:I

    iget v5, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->c:I

    iget v0, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;->d:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->getContentViewId()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
