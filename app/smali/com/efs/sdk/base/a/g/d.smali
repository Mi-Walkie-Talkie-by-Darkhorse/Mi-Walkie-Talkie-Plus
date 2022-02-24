.class public final Lcom/efs/sdk/base/a/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/g/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/a/g/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/efs/sdk/base/a/g/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/d;->a:Lcom/efs/sdk/base/a/g/a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/d;-><init>()V

    return-void
.end method
