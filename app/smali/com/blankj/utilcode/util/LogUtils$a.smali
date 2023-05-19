.class final Lcom/blankj/utilcode/util/LogUtils$a;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/LogUtils;->v(ILjava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/blankj/utilcode/util/LogUtils$j;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/blankj/utilcode/util/LogUtils$j;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$a;->a:I

    iput-object p2, p0, Lcom/blankj/utilcode/util/LogUtils$a;->b:Lcom/blankj/utilcode/util/LogUtils$j;

    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/blankj/utilcode/util/LogUtils$a;->a:I

    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$a;->b:Lcom/blankj/utilcode/util/LogUtils$j;

    iget-object v1, v1, Lcom/blankj/utilcode/util/LogUtils$j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/blankj/utilcode/util/LogUtils$a;->b:Lcom/blankj/utilcode/util/LogUtils$j;

    iget-object v3, v3, Lcom/blankj/utilcode/util/LogUtils$j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/blankj/utilcode/util/LogUtils$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
