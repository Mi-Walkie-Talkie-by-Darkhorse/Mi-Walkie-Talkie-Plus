.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$6$1;
.super Lcom/ifengyu/intercom/ui/widget/view/a;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$6;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->popupBg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
