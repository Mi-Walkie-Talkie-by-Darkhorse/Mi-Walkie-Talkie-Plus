.class Lb/c/a/e/b$b;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lb/c/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/c/a/e/b;-><init>(Lb/c/a/e/b$a;)V

    sput-object v0, Lb/c/a/e/b$b;->a:Lb/c/a/e/b;

    return-void
.end method

.method static synthetic a()Lb/c/a/e/b;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/e/b$b;->a:Lb/c/a/e/b;

    return-object v0
.end method
