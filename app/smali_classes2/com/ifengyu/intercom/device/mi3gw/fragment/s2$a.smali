.class Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;
.super Ljava/lang/Object;
.source "Mi3PublicProtocolFragment.java"

# interfaces
.implements Lcom/ifengyu/library/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;->u3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;

    const v0, 0x7f11034e

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;->B3(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;->z3(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;->A3(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;)V

    return-void
.end method
