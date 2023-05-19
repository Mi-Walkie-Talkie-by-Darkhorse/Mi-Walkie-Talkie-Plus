.class public abstract Lb/b/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lb/b/a/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lb/b/a/a;
    .locals 1

    sget-object v0, Lb/b/a/a;->a:Lb/b/a/a;

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lb/b/a/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "AGConnectInstance"

    const-string v2, "AGConnectInstance#initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    sget-object v1, Lb/b/a/a;->a:Lb/b/a/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/huawei/agconnect/core/a/a;

    invoke-direct {v1, p0}, Lcom/huawei/agconnect/core/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/b/a/a;->a:Lb/b/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract a()Landroid/content/Context;
.end method
