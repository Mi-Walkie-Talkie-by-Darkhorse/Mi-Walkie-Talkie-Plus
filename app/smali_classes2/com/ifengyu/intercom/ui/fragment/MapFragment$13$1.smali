.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;->a()V

    :cond_0
    return-void
.end method
