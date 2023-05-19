.class final Lcom/efs/sdk/base/a/c/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/a/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/efs/sdk/base/a/c/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/a/c/a/c;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/a/c/a/c$a;->a:Lcom/efs/sdk/base/a/c/a/c;

    return-void
.end method

.method static synthetic a()Lcom/efs/sdk/base/a/c/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/efs/sdk/base/a/c/a/c$a;->a:Lcom/efs/sdk/base/a/c/a/c;

    return-object v0
.end method
