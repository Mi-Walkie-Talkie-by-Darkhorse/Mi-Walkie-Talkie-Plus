.class public final Lcom/efs/sdk/base/a/g/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/a/g/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/efs/sdk/base/a/g/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/a/g/d;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/a/g/d$a;->a:Lcom/efs/sdk/base/a/g/d;

    return-void
.end method

.method public static synthetic a()Lcom/efs/sdk/base/a/g/d;
    .locals 1

    sget-object v0, Lcom/efs/sdk/base/a/g/d$a;->a:Lcom/efs/sdk/base/a/g/d;

    return-object v0
.end method
