.class Lcom/blankj/utilcode/util/x$b;
.super Ljava/lang/Object;
.source "UtilsActivityLifecycleImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/x;->r(Landroid/app/Activity;Lcom/blankj/utilcode/util/w$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/blankj/utilcode/util/w$a;

.field final synthetic c:Lcom/blankj/utilcode/util/x;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/x;Landroid/app/Activity;Lcom/blankj/utilcode/util/w$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/x$b;->c:Lcom/blankj/utilcode/util/x;

    iput-object p2, p0, Lcom/blankj/utilcode/util/x$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/blankj/utilcode/util/x$b;->b:Lcom/blankj/utilcode/util/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/x$b;->c:Lcom/blankj/utilcode/util/x;

    iget-object v1, p0, Lcom/blankj/utilcode/util/x$b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/blankj/utilcode/util/x$b;->b:Lcom/blankj/utilcode/util/w$a;

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/x;->b(Lcom/blankj/utilcode/util/x;Landroid/app/Activity;Lcom/blankj/utilcode/util/w$a;)V

    return-void
.end method
