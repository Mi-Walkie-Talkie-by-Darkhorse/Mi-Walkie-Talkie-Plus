.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;
.super Lcom/ifengyu/intercom/g/d/i;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;->b(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v0

    if-lez v0, :cond_0

    if-ge v0, p2, :cond_0

    const/4 p2, 0x1

    .line 4
    invoke-static {p2}, Lcom/ifengyu/intercom/i/d0;->n(Z)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;->a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method