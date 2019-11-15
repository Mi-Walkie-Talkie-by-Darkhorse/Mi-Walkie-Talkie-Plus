.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$8;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
