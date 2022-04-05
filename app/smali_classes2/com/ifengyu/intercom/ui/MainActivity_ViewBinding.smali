.class public Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    const v1, 0x7f0901c4

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090089

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
