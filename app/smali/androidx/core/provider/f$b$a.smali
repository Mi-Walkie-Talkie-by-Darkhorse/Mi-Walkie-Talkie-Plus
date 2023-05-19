.class Landroidx/core/provider/f$b$a;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/f$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/d/a;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/provider/f$b;Landroidx/core/d/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/core/provider/f$b$a;->a:Landroidx/core/d/a;

    iput-object p3, p0, Landroidx/core/provider/f$b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/f$b$a;->a:Landroidx/core/d/a;

    iget-object v1, p0, Landroidx/core/provider/f$b$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/core/d/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
