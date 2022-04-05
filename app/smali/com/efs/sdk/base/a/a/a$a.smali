.class final Lcom/efs/sdk/base/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/efs/sdk/base/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/a/a/a;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/a/a/a$a;->a:Lcom/efs/sdk/base/a/a/a;

    return-void
.end method

.method static synthetic a()Lcom/efs/sdk/base/a/a/a;
    .locals 1

    sget-object v0, Lcom/efs/sdk/base/a/a/a$a;->a:Lcom/efs/sdk/base/a/a/a;

    return-object v0
.end method
