.class Lcom/ifengyu/blelib/c/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/blelib/c/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/blelib/c/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/blelib/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/blelib/c/d$a;->a:Lcom/ifengyu/blelib/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/blelib/c/d$a;->a:Lcom/ifengyu/blelib/c/d;

    invoke-static {v0}, Lcom/ifengyu/blelib/c/d;->a(Lcom/ifengyu/blelib/c/d;)V

    iget-object v0, p0, Lcom/ifengyu/blelib/c/d$a;->a:Lcom/ifengyu/blelib/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/c/d;->a(Lcom/ifengyu/blelib/c/d;Z)Z

    iget-object v0, p0, Lcom/ifengyu/blelib/c/d$a;->a:Lcom/ifengyu/blelib/c/d;

    invoke-static {v0}, Lcom/ifengyu/blelib/c/d;->b(Lcom/ifengyu/blelib/c/d;)V

    return-void
.end method
