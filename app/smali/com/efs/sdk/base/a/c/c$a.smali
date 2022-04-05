.class public final Lcom/efs/sdk/base/a/c/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/efs/sdk/base/a/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/a/c/c;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/a/c/c$a;->a:Lcom/efs/sdk/base/a/c/c;

    return-void
.end method

.method public static synthetic a()Lcom/efs/sdk/base/a/c/c;
    .locals 1

    sget-object v0, Lcom/efs/sdk/base/a/c/c$a;->a:Lcom/efs/sdk/base/a/c/c;

    return-object v0
.end method
