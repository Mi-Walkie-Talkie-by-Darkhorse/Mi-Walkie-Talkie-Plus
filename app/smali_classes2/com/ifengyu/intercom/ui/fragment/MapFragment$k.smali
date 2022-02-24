.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MapFragment"

    const-string v0, "onServiceConnected"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    check-cast p2, Lcom/ifengyu/intercom/ui/service/TrackRecordService$d;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService$d;->a()Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/service/TrackRecordService;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->a(Lcom/ifengyu/intercom/ui/service/TrackRecordService$c;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MapFragment"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$k;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/service/TrackRecordService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/service/TrackRecordService;->d()V

    :cond_0
    return-void
.end method
