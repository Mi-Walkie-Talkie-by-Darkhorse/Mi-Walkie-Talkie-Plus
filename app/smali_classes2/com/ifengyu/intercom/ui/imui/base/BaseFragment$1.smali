.class Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

.field private b:F


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->b:F

    return v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1$1;-><init>(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->b:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
