.class public final Lcom/efs/sdk/base/a/g/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/a/f/b;

.field final synthetic b:Lcom/efs/sdk/base/a/g/d;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/a/g/d;Lcom/efs/sdk/base/a/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/base/a/g/d$1;->b:Lcom/efs/sdk/base/a/g/d;

    iput-object p2, p0, Lcom/efs/sdk/base/a/g/d$1;->a:Lcom/efs/sdk/base/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/a/g/d$1;->b:Lcom/efs/sdk/base/a/g/d;

    iget-object v0, v0, Lcom/efs/sdk/base/a/g/d;->a:Lcom/efs/sdk/base/a/g/a;

    iget-object v1, p0, Lcom/efs/sdk/base/a/g/d$1;->a:Lcom/efs/sdk/base/a/f/b;

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/g/a;->a(Lcom/efs/sdk/base/a/f/b;)V

    return-void
.end method
