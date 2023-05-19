.class Lcom/ifengyu/intercom/device/mi3gw/c/d0$j;
.super Lcom/ifengyu/library/b/e/a;
.source "DeviceDataShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/c/d0;->openDoubleGroupListen(Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/c/f0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;Lcom/ifengyu/intercom/device/mi3gw/c/f0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$j;->a:Lcom/ifengyu/intercom/device/mi3gw/c/f0;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openDoubleGroupListen fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$j;->a:Lcom/ifengyu/intercom/device/mi3gw/c/f0;

    const v0, 0x7f11037b

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/device/mi3gw/c/f0;->b(I)V

    return-void
.end method
