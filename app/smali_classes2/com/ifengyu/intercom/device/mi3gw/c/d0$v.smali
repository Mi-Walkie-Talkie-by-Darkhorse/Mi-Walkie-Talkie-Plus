.class Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;
.super Lcom/ifengyu/library/b/e/a;
.source "DeviceDataShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/c/d0;->E0(JLjava/lang/String;)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    iput-wide p2, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;->a:J

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updateMemberInGroupName fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;->b:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->b(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/c/e0;

    .line 3
    iget-wide v1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/d0$v;->a:J

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/c/e0;->Y(J)V

    goto :goto_0

    :cond_0
    return-void
.end method