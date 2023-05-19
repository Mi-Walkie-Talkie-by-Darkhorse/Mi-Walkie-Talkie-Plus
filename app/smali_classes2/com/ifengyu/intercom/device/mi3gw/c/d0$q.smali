.class Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;
.super Lcom/ifengyu/library/b/e/a;
.source "DeviceDataShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/c/d0;->B0(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    iput-wide p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;->a:J

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryGroupWithMembers fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->c(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$q;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->B0(J)V

    :cond_0
    return-void
.end method
