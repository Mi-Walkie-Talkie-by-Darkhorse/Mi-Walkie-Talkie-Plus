.class public Lcom/ifengyu/intercom/node/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/Future;

.field public final b:Ljava/util/concurrent/Future;

.field public final c:Ljava/io/InputStream;

.field public final d:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/p;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/o;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ifengyu/intercom/node/f;->a:Ljava/util/concurrent/Future;

    iput-object p5, p0, Lcom/ifengyu/intercom/node/f;->b:Ljava/util/concurrent/Future;

    iput-object p6, p0, Lcom/ifengyu/intercom/node/f;->c:Ljava/io/InputStream;

    iput-object p7, p0, Lcom/ifengyu/intercom/node/f;->d:Ljava/io/OutputStream;

    return-void
.end method
