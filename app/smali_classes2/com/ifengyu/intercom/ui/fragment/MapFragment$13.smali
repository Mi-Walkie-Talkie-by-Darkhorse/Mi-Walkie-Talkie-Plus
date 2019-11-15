.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->B()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->e(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$13$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$13;)V

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    iput-boolean v4, v0, Lcom/ifengyu/intercom/MiTalkiApp;->a:Z

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->p(Z)V

    return-void
.end method
