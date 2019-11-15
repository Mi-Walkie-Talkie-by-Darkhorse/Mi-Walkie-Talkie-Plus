.class public final Lcom/amap/api/col/sl/aa;
.super Ljava/lang/Object;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/aa$a;
    }
.end annotation


# static fields
.field public static a:Lcom/amap/api/col/sl/bz;

.field private static b:Lcom/amap/api/col/sl/aa;

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Lcom/amap/api/col/sl/aa$a;

.field private e:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/col/sl/aa$1;

    const-string v1, "manifestThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/sl/aa$1;-><init>(Lcom/amap/api/col/sl/aa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/aa;->e:Landroid/os/HandlerThread;

    sput-object p1, Lcom/amap/api/col/sl/aa;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/sl/aa;->a:Lcom/amap/api/col/sl/bz;

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/aa$a;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/sl/aa$a;-><init>(Lcom/amap/api/col/sl/aa;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/sl/aa;->d:Lcom/amap/api/col/sl/aa$a;

    iget-object v0, p0, Lcom/amap/api/col/sl/aa;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ManifestConfig"

    const-string v2, "ManifestConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/aa;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/aa;)Lcom/amap/api/col/sl/aa$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/aa;->d:Lcom/amap/api/col/sl/aa$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/aa;->b:Lcom/amap/api/col/sl/aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/aa;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/sl/aa;->b:Lcom/amap/api/col/sl/aa;

    :cond_0
    sget-object v0, Lcom/amap/api/col/sl/aa;->b:Lcom/amap/api/col/sl/aa;

    return-object v0
.end method
