.class final Lcom/efs/sdk/base/a/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/efs/sdk/base/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/efs/sdk/base/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/a/a/d;-><init>(B)V

    sput-object v0, Lcom/efs/sdk/base/a/a/d$a;->a:Lcom/efs/sdk/base/a/a/d;

    return-void
.end method

.method static synthetic a()Lcom/efs/sdk/base/a/a/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/efs/sdk/base/a/a/d$a;->a:Lcom/efs/sdk/base/a/a/d;

    return-object v0
.end method
