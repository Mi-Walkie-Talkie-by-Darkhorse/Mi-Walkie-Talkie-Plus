.class Lcom/ifengyu/intercom/network/d/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/network/d/c;->a(Lcom/ifengyu/intercom/network/d/a;Lcom/ifengyu/intercom/network/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/network/d/d;

.field final synthetic b:Lcom/ifengyu/intercom/network/d/a;

.field final synthetic c:Lcom/ifengyu/intercom/network/d/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/network/d/c;Lcom/ifengyu/intercom/network/d/d;Lcom/ifengyu/intercom/network/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/network/d/c$a;->c:Lcom/ifengyu/intercom/network/d/c;

    iput-object p2, p0, Lcom/ifengyu/intercom/network/d/c$a;->a:Lcom/ifengyu/intercom/network/d/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/network/d/c$a;->b:Lcom/ifengyu/intercom/network/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/network/d/c$a;->a:Lcom/ifengyu/intercom/network/d/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/network/d/c$a;->b:Lcom/ifengyu/intercom/network/d/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/network/d/c$a;->c:Lcom/ifengyu/intercom/network/d/c;

    invoke-static {v2}, Lcom/ifengyu/intercom/network/d/c;->a(Lcom/ifengyu/intercom/network/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/network/d/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
