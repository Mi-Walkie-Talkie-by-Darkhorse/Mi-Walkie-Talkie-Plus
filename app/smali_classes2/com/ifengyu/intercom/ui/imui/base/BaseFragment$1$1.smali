.class Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1$1;->a:Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;->a(Lcom/ifengyu/intercom/ui/imui/base/BaseFragment$1;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method
