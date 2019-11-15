.class Lcom/ifengyu/intercom/node/q$1;
.super Ljava/lang/Object;
.source "WalkTalkTransportManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/node/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/q;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/q$1;->a:Lcom/ifengyu/intercom/node/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/ifengyu/intercom/node/o;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/node/o;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
