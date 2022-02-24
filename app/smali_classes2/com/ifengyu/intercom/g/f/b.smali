.class public Lcom/ifengyu/intercom/g/f/b;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ifengyu/intercom/g/f/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OkHttp"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
