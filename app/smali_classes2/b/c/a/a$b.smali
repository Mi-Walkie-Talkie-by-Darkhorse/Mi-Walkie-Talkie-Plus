.class Lb/c/a/a$b;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lb/c/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/c/a/a;-><init>(Lb/c/a/a$a;)V

    sput-object v0, Lb/c/a/a$b;->a:Lb/c/a/a;

    return-void
.end method

.method static synthetic a()Lb/c/a/a;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/a$b;->a:Lb/c/a/a;

    return-object v0
.end method
