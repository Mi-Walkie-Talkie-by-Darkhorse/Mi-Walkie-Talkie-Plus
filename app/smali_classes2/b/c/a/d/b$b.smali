.class Lb/c/a/d/b$b;
.super Ljava/lang/Object;
.source "FileConvert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/d/b;->k(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/model/Progress;

.field final synthetic b:Lb/c/a/d/b;


# direct methods
.method constructor <init>(Lb/c/a/d/b;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/d/b$b;->b:Lb/c/a/d/b;

    iput-object p2, p0, Lb/c/a/d/b$b;->a:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/d/b$b;->b:Lb/c/a/d/b;

    invoke-static {v0}, Lb/c/a/d/b;->i(Lb/c/a/d/b;)Lb/c/a/c/b;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/d/b$b;->a:Lcom/lzy/okgo/model/Progress;

    invoke-interface {v0, v1}, Lb/c/a/c/b;->e(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
