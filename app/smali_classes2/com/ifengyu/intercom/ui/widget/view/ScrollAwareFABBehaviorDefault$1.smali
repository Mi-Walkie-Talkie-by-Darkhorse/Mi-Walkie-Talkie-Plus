.class Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault$1;
.super Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
.source "ScrollAwareFABBehaviorDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault$1;->a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareFABBehaviorDefault;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Landroid/support/design/widget/FloatingActionButton;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method
