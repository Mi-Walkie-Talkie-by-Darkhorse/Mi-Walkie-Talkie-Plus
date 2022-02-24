.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$h;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->J()V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$h;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$h;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$h;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/f0;->a(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method
