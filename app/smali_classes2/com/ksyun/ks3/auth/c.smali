.class public Lcom/ksyun/ks3/auth/c;
.super Ljava/lang/Object;
.source "DefaultSigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1, p2}, Lcom/ksyun/ks3/auth/b;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "ks3_android_sdk"

    const-string v1, "calculate user authorization has occured an exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
