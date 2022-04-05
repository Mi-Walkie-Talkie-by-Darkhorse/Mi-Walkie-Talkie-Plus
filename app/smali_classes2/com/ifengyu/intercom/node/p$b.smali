.class Lcom/ifengyu/intercom/node/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/transport/j;Landroid/os/Handler;)Lcom/ifengyu/intercom/node/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/transport/h;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/ifengyu/intercom/node/SendDataWrap;

.field final synthetic d:Lcom/ifengyu/intercom/node/transport/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V
    .locals 0

    iput-object p2, p0, Lcom/ifengyu/intercom/node/p$b;->a:Lcom/ifengyu/intercom/node/transport/h;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/p$b;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/ifengyu/intercom/node/p$b;->c:Lcom/ifengyu/intercom/node/SendDataWrap;

    iput-object p5, p0, Lcom/ifengyu/intercom/node/p$b;->d:Lcom/ifengyu/intercom/node/transport/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/p$b;->a:Lcom/ifengyu/intercom/node/transport/h;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/p$b;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/p$b;->c:Lcom/ifengyu/intercom/node/SendDataWrap;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/p$b;->d:Lcom/ifengyu/intercom/node/transport/j;

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
