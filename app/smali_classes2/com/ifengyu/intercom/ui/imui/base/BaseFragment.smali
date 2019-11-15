.class public abstract Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;
    }
.end annotation


# static fields
.field protected static final SCALE_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

.field protected static final SLIDE_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

.field protected static final VERTICAL_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mBundle:Landroid/os/Bundle;

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mRootView:Landroid/view/View;

.field private mRxPermissions:Lcom/tbruyelle/rxpermissions2/b;

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
.method static constructor <clinit>()V
    .locals 6

    const v5, 0x7f050029

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    const v1, 0x7f050025

    const v2, 0x7f050026

    const v3, 0x7f050027

    const v4, 0x7f050028

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;-><init>(IIII)V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->SLIDE_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    const v1, 0x7f050021

    const v2, 0x7f050022

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;-><init>(IIII)V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->SCALE_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    const v1, 0x7f05002c

    const v2, 0x7f05002d

    const v3, 0x7f05002e

    const v4, 0x7f05002f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;-><init>(IIII)V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->VERTICAL_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mViews:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getRxPermissions()Lcom/tbruyelle/rxpermissions2/b;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRxPermissions:Lcom/tbruyelle/rxpermissions2/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRxPermissions:Lcom/tbruyelle/rxpermissions2/b;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRxPermissions:Lcom/tbruyelle/rxpermissions2/b;

    return-object v0
.end method

.method protected initBundle(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public isAttachedToActivity()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onBindViewBefore(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/32 v2, 0x7f0e0003

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f050021

    if-ne p3, v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFetchTransitionConfig()Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->SLIDE_TRANSITION_CONFIG:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$a;

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onHiddenChanged:hidden"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onHiddenChanged:show"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRestartInstance(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onBindViewBefore(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onRestartInstance(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initWidget(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initData()V

    return-void
.end method

.method protected popBackStack()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->popBackStack()V

    :cond_0
    return-void
.end method

.method public replaceFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->replaceFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment not attached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setGone(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->findView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method protected setInVisibility(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->findView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setText(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->setText(ILjava/lang/String;)V

    return-void
.end method

.method protected setText(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setTextEmptyGone(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setVisibility(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->findView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public startFragment(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->isAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getBaseActivity()Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;->switchContent(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment not attached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
