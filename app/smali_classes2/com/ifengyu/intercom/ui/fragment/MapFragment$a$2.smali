.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$2;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$2;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$2;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->k()V

    return-void
.end method
