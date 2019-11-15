.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$11;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$11;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$11;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$11$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$11$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$11;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V

    return-void
.end method
