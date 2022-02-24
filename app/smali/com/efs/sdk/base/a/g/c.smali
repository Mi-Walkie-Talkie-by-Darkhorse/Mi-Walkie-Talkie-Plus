.class public final Lcom/efs/sdk/base/a/g/c;
.super Lcom/efs/sdk/base/a/g/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/efs/sdk/base/a/g/a/a;
    .locals 4

    .line 1
    new-instance v0, Lcom/efs/sdk/base/a/g/a/f;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/a/f;-><init>()V

    .line 2
    new-instance v1, Lcom/efs/sdk/base/a/g/a/c;

    invoke-direct {v1}, Lcom/efs/sdk/base/a/g/a/c;-><init>()V

    .line 3
    new-instance v2, Lcom/efs/sdk/base/a/g/a/d;

    invoke-direct {v2}, Lcom/efs/sdk/base/a/g/a/d;-><init>()V

    .line 4
    new-instance v2, Lcom/efs/sdk/base/a/g/a/b;

    invoke-direct {v2}, Lcom/efs/sdk/base/a/g/a/b;-><init>()V

    .line 5
    new-instance v3, Lcom/efs/sdk/base/a/g/a/e;

    invoke-direct {v3}, Lcom/efs/sdk/base/a/g/a/e;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    .line 7
    iput-object v2, v1, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    .line 8
    iput-object v3, v2, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    return-object v0
.end method
