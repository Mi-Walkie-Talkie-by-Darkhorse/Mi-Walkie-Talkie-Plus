.class Lcom/ifengyu/blelib/b/b$a;
.super Ljava/lang/Object;
.source "ListenerQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/blelib/b/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/blelib/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/blelib/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/blelib/b/b$a;->a:Lcom/ifengyu/blelib/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b$a;->a:Lcom/ifengyu/blelib/b/b;

    invoke-static {v0}, Lcom/ifengyu/blelib/b/b;->a(Lcom/ifengyu/blelib/b/b;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b$a;->a:Lcom/ifengyu/blelib/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/b/b;->b(Lcom/ifengyu/blelib/b/b;Z)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b$a;->a:Lcom/ifengyu/blelib/b/b;

    invoke-static {v0}, Lcom/ifengyu/blelib/b/b;->c(Lcom/ifengyu/blelib/b/b;)V

    return-void
.end method
