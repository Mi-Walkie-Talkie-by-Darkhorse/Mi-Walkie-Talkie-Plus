.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$l$a;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l$a;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l$a;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l$a;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l$a;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$l;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;->a()V

    :cond_0
    return-void
.end method
