.class Lcom/blankj/utilcode/util/ToastUtils$g$a;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils$g;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/blankj/utilcode/util/ToastUtils$g;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$g$a;->a:Lcom/blankj/utilcode/util/ToastUtils$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$g$a;->a:Lcom/blankj/utilcode/util/ToastUtils$g;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ToastUtils$g;->cancel()V

    return-void
.end method
