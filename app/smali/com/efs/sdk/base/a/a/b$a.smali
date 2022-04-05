.class final Lcom/efs/sdk/base/a/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/efs/sdk/base/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/a/a/b;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/a/a/b$a;->a:Lcom/efs/sdk/base/a/a/b;

    return-void
.end method

.method static synthetic a()Lcom/efs/sdk/base/a/a/b;
    .locals 1

    sget-object v0, Lcom/efs/sdk/base/a/a/b$a;->a:Lcom/efs/sdk/base/a/a/b;

    return-object v0
.end method
