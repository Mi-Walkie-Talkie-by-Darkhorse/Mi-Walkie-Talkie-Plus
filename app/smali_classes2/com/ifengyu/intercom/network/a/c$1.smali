.class Lcom/ifengyu/intercom/network/a/c$1;
.super Ljava/lang/Object;
.source "HttpGetMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/network/a/c;->a(Lcom/ifengyu/intercom/network/a/a;Lcom/ifengyu/intercom/network/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/network/a/d;

.field final synthetic b:Lcom/ifengyu/intercom/network/a/a;

.field final synthetic c:Lcom/ifengyu/intercom/network/a/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/network/a/c;Lcom/ifengyu/intercom/network/a/d;Lcom/ifengyu/intercom/network/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/network/a/c$1;->c:Lcom/ifengyu/intercom/network/a/c;

    iput-object p2, p0, Lcom/ifengyu/intercom/network/a/c$1;->a:Lcom/ifengyu/intercom/network/a/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/network/a/c$1;->b:Lcom/ifengyu/intercom/network/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/network/a/c$1;->a:Lcom/ifengyu/intercom/network/a/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/network/a/c$1;->a:Lcom/ifengyu/intercom/network/a/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/network/a/c$1;->b:Lcom/ifengyu/intercom/network/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/network/a/c$1;->c:Lcom/ifengyu/intercom/network/a/c;

    invoke-static {v2}, Lcom/ifengyu/intercom/network/a/c;->a(Lcom/ifengyu/intercom/network/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/network/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/network/a/d;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
