.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$b;->a()Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService$a;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MapFragment"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$1;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d()V

    :cond_0
    return-void
.end method
