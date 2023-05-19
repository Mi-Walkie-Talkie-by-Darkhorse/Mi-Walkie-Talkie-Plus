.class Lcom/ifengyu/intercom/httpold/download/a$a;
.super Ljava/lang/Object;
.source "HttpDownloadFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/httpold/download/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/ifengyu/intercom/httpold/download/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/httpold/download/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->d:Lcom/ifengyu/intercom/httpold/download/a;

    iput-object p2, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->d:Lcom/ifengyu/intercom/httpold/download/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ifengyu/intercom/httpold/download/a$a;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/httpold/download/a;->a(Lcom/ifengyu/intercom/httpold/download/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method
