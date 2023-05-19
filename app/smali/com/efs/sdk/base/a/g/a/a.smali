.class public abstract Lcom/efs/sdk/base/a/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/efs/sdk/base/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/efs/sdk/base/a/f/b;)V
.end method

.method final b(Lcom/efs/sdk/base/a/f/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/g/a/a;->a(Lcom/efs/sdk/base/a/f/b;)V

    :cond_0
    return-void
.end method
