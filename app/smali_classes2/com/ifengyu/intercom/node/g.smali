.class public Lcom/ifengyu/intercom/node/g;
.super Ljava/lang/Object;
.source "DeviceConnection.java"


# instance fields
.field final a:Lcom/ifengyu/intercom/node/q;

.field final b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field public final c:Lcom/ifengyu/intercom/node/p;

.field public final d:Ljava/util/concurrent/Future;

.field public final e:Ljava/util/concurrent/Future;

.field public final f:Ljava/io/InputStream;

.field public final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/q;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Lcom/ifengyu/intercom/node/p;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/g;->a:Lcom/ifengyu/intercom/node/q;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/g;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/g;->c:Lcom/ifengyu/intercom/node/p;

    iput-object p4, p0, Lcom/ifengyu/intercom/node/g;->d:Ljava/util/concurrent/Future;

    iput-object p5, p0, Lcom/ifengyu/intercom/node/g;->e:Ljava/util/concurrent/Future;

    iput-object p6, p0, Lcom/ifengyu/intercom/node/g;->f:Ljava/io/InputStream;

    iput-object p7, p0, Lcom/ifengyu/intercom/node/g;->g:Ljava/io/OutputStream;

    return-void
.end method
