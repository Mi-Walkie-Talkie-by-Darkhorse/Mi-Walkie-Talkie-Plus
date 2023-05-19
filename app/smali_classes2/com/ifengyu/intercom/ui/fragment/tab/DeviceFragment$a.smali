.class Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->l3(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->m3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/b;->H0()Z

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->n3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->o3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->p3(Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/tab/DeviceFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method
