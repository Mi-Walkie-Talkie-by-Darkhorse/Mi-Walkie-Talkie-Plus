.class Lcom/blankj/utilcode/util/ToastUtils$d$b;
.super Lcom/blankj/utilcode/util/w$a;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/blankj/utilcode/util/ToastUtils$d;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->b:Lcom/blankj/utilcode/util/ToastUtils$d;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->a:I

    invoke-direct {p0}, Lcom/blankj/utilcode/util/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->b:Lcom/blankj/utilcode/util/ToastUtils$d;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils$d;->g(Lcom/blankj/utilcode/util/ToastUtils$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->b:Lcom/blankj/utilcode/util/ToastUtils$d;

    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$d$b;->a:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/blankj/utilcode/util/ToastUtils$d;->h(Lcom/blankj/utilcode/util/ToastUtils$d;Landroid/app/Activity;IZ)V

    :cond_0
    return-void
.end method
