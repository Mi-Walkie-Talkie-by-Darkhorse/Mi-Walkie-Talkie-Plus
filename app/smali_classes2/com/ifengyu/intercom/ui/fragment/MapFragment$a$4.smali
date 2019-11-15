.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;
.super Lcom/ifengyu/intercom/a/b/h;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

.field final synthetic c:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;->c:Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v1

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->k(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;->a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
