.class public Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/MainActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    const v0, 0x7f1000f8

    const-string v1, "field \'viewPager\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    const v0, 0x7f1000f6

    const-string v1, "field \'mTabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/MainActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method
