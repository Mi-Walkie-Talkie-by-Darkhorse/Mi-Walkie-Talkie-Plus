.class public Lcom/ifengyu/intercom/a/d/b;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ifengyu/intercom/a/d/b;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/a/d/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OkHttp"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
