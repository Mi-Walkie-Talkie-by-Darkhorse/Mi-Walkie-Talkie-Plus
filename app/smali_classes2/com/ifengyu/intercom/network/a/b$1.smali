.class Lcom/ifengyu/intercom/network/a/b$1;
.super Ljava/lang/Object;
.source "HttpDownloadFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/network/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/ifengyu/intercom/network/a/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/network/a/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/network/a/b$1;->d:Lcom/ifengyu/intercom/network/a/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/network/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/network/a/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/intercom/network/a/b$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/network/a/b$1;->d:Lcom/ifengyu/intercom/network/a/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/network/a/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/network/a/b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/network/a/b$1;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/network/a/b;->a(Lcom/ifengyu/intercom/network/a/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method
