.class Lrx/a/b/a$a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrx/a/b/b;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lrx/a/b/b;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lrx/a/b/a$a;->a:Lrx/d;

    return-void
.end method
