.class public final Lcom/efs/sdk/base/a/g/c;
.super Lcom/efs/sdk/base/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/efs/sdk/base/a/g/a/a;
    .locals 4

    new-instance v0, Lcom/efs/sdk/base/a/g/a/f;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/a/f;-><init>()V

    new-instance v1, Lcom/efs/sdk/base/a/g/a/c;

    invoke-direct {v1}, Lcom/efs/sdk/base/a/g/a/c;-><init>()V

    new-instance v2, Lcom/efs/sdk/base/a/g/a/d;

    invoke-direct {v2}, Lcom/efs/sdk/base/a/g/a/d;-><init>()V

    new-instance v2, Lcom/efs/sdk/base/a/g/a/b;

    invoke-direct {v2}, Lcom/efs/sdk/base/a/g/a/b;-><init>()V

    new-instance v3, Lcom/efs/sdk/base/a/g/a/e;

    invoke-direct {v3}, Lcom/efs/sdk/base/a/g/a/e;-><init>()V

    iput-object v1, v0, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    iput-object v2, v1, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    iput-object v3, v2, Lcom/efs/sdk/base/a/g/a/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    return-object v0
.end method
